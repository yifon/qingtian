<?php
class ModelCatalogFaq extends Model {
	public function addFaq($data) {
		$this->db->query("INSERT INTO " . DB_PREFIX . "faq SET answer = '" . $this->db->escape($data['answer']) . "'");
		
		$faq_id = $this->db->getLastId();

		foreach ($data['faq_question'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "faq_question SET faq_id = '" . (int)$faq_id . "', language_id = '" . (int)$language_id . "', question = '" . $this->db->escape($value['question']) . "'");
		}

		if ($data['keyword']) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'faq_id=" . (int)$faq_id . "', keyword = '" . $this->db->escape($data['keyword']) . "'");
		}
						
		$this->cache->delete('faq');
	}
	
	public function editFaq($faq_id, $data) {
		$this->db->query("UPDATE " . DB_PREFIX . "faq SET answer = '" . $this->db->escape($data['answer']) . "' WHERE faq_id = '" . (int)$faq_id . "'");

		$this->db->query("DELETE FROM " . DB_PREFIX . "faq_question WHERE faq_id = '" . (int)$faq_id . "'");
		
		foreach ($data['faq_question'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "faq_question SET faq_id = '" . (int)$faq_id . "', language_id = '" . (int)$language_id . "', question = '" . $this->db->escape($value['question']) . "'");
		}
			
		$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'faq_id=" . (int)$faq_id. "'");
		
		if ($data['keyword']) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'faq_id=" . (int)$faq_id . "', keyword = '" . $this->db->escape($data['keyword']) . "'");
		}
						
		$this->cache->delete('product');
	}
	
	public function copyFaq($faq_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "faq f LEFT JOIN " . DB_PREFIX . "faq_question fq ON (f.faq_id = fq.faq_id) WHERE f.faq_id = '" . (int)$faq_id . "' AND fq.language_id = '" . (int)$this->config->get('config_language_id') . "'");
		
		if ($query->num_rows) {
			$data = array();
			
			$data = $query->row;
			
			$data['sku'] = '';
			$data['upc'] = '';
			$data['viewed'] = '0';
			$data['keyword'] = '';
			$data['status'] = '0';
						
			$data = array_merge($data, array('product_attribute' => $this->getFaqAttributes($faq_id)));
			$data = array_merge($data, array('faq_question' => $this->getFaqDescriptions($faq_id)));			
			$data = array_merge($data, array('product_discount' => $this->getFaqDiscounts($faq_id)));
			$data = array_merge($data, array('product_filter' => $this->getFaqFilters($faq_id)));
			$data = array_merge($data, array('product_image' => $this->getFaqImages($faq_id)));		
			$data = array_merge($data, array('product_option' => $this->getFaqOptions($faq_id)));
			$data = array_merge($data, array('product_related' => $this->getFaqRelated($faq_id)));
			$data = array_merge($data, array('product_reward' => $this->getFaqRewards($faq_id)));
			$data = array_merge($data, array('product_special' => $this->getFaqSpecials($faq_id)));
			$data = array_merge($data, array('product_category' => $this->getFaqCategories($faq_id)));
			$data = array_merge($data, array('product_download' => $this->getFaqDownloads($faq_id)));
			$data = array_merge($data, array('product_layout' => $this->getFaqLayouts($faq_id)));
			$data = array_merge($data, array('product_store' => $this->getFaqStores($faq_id)));
			
			$this->addFaq($data);
		}
	}
	
	public function deleteFaq($faq_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "faq WHERE faq_id = '" . (int)$faq_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "faq_question WHERE faq_id = '" . (int)$faq_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'faq_id=" . (int)$faq_id. "'");
		
		$this->cache->delete('faq');
	}
	
	public function getFaq($faq_id) {
		$query = $this->db->query("SELECT DISTINCT *, (SELECT keyword FROM " . DB_PREFIX . "url_alias WHERE query = 'faq_id=" . (int)$faq_id . "') AS keyword FROM " . DB_PREFIX . "faq f LEFT JOIN " . DB_PREFIX . "faq_question fq ON (f.faq_id = fq.faq_id) WHERE f.faq_id = '" . (int)$faq_id . "' AND fq.language_id = '" . (int)$this->config->get('config_language_id') . "'");
		
		return $query->row;
	}
	
	public function getFaqs($data = array()) {
		$sql = "SELECT * FROM " . DB_PREFIX . "faq f LEFT JOIN " . DB_PREFIX . "faq_question fq ON (f.faq_id = fq.faq_id)";
				
		$sql .= " WHERE fq.language_id = '" . (int)$this->config->get('config_language_id') . "'"; 
		
		if (!empty($data['filter_question'])) {
			$sql .= " AND fq.question LIKE '%" . $this->db->escape($data['filter_question']) . "%'";
		}

		if (!empty($data['filter_answer'])) {
			$sql .= " AND f.answer LIKE '%" . $this->db->escape($data['filter_answer']) . "%'";
		}			
		
		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}				

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}	
		
			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];

			$query = $this->db->query($sql);
		}
	
		return $query->rows;
	}
	
	public function getFaqQuestions($faq_id) {
		$faq_question_data = array();
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "faq_question WHERE faq_id = '" . (int)$faq_id . "'");
		
		foreach ($query->rows as $result) {
			$faq_question_data[$result['language_id']] = array(
				'question'  => $result['question']
			);
		}
		
		return $faq_question_data;
	}
	
	public function getTotalFaqs($data = array()) {
		$sql = "SELECT COUNT(DISTINCT f.faq_id) AS total FROM " . DB_PREFIX . "faq f LEFT JOIN " . DB_PREFIX . "faq_question fq ON (f.faq_id = fq.faq_id)";
		 
		$sql .= " WHERE fq.language_id = '" . (int)$this->config->get('config_language_id') . "'";
		 			
		if (!empty($data['filter_question'])) {
			$sql .= " AND fq.question LIKE '%" . $this->db->escape($data['filter_question']) . "%'";
		}

		if (!empty($data['filter_answer'])) {
			$sql .= " AND f.answer LIKE '%" . $this->db->escape($data['filter_answer']) . "%'";
		}
		
		$query = $this->db->query($sql);
		
		return $query->row['total'];
	}	
}
?>
