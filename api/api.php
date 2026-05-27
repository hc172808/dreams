<?php

	require_once("Rest.inc.php");
	require_once("db.php");
	require_once("functions.php");

	class API extends REST {

		private $functions = NULL;
		private $db = NULL;

		public function __construct() {
			$this->db = new DB();
			$this->functions = new functions($this->db);
		}

		public function check_connection() {
			$this->functions->checkConnection();
		}

		/*
		 * ALL API Related android client -------------------------------------------------------------------------
		*/
	    
        private function post_user_register() {
	        $this->functions->postUserRegister();
	    }

        
        
        private function get_app_details() {
	        $this->functions->getAppDetails();
	    }
	    
	    private function get_user_login() {
	        $this->functions->getUserLogin();
	    }
	    
	    private function get_user_profile() {
	        $this->functions->getUserProfile();
	    }
	    
	    
	    
	    private function verify_refer() {
	        $this->functions->verifyRefer();
	    }
	    
	    private function verify_mobile() {
	        $this->functions->verifyMobile();
	    }
	    
	    private function verify_register() {
	        $this->functions->verifyRegister();
	    }
	    
	  
	    
	    private function update_user_profile() {
	        $this->functions->updateUserProfile();
	    }

	    private function update_user_photo() {
	        $this->functions->updateUserPhoto();
	    }
	    
	    private function reset_password() {
	        $this->functions->resetPassword();
	    }
	    
	    
	    
	   	private function get_notification() {
			$this->functions->getNotification();
		}
	    
	    private function get_history() {
			$this->functions->getHistory();
		}
		
	    private function get_statistics() {
			$this->functions->getStatistics();
		}
		
		private function get_leaderboard() {
			$this->functions->getLeaderboard();
		}
		
		
		private function post_balance() {
			$this->functions->postBalance();
		}
		
		private function post_deposit() {
			$this->functions->postDeposit();
		}
		
		private function post_withdraw() {
			$this->functions->postWithdraw();
		}
		
		
		
		private function get_match_upcoming() {
			$this->functions->getMatchUpcoming();
		}
		
		private function get_match_ongoing() {
			$this->functions->getMatchOngoing();
		}
		
		private function get_match_completed() {
			$this->functions->getMatchCompleted();
		}
		
		

        private function post_join_match() {
			$this->functions->postJoinMatch();
		}
		
		private function post_result() {
			$this->functions->postResult();
		}
		
		private function delete_participant() {
	        $this->functions->deleteParticipant();
	    }
	    
	    private function search_participant() {
	        $this->functions->searchParticipant();
	    }
	    
		
		
		private function get_faq() {
	        $this->functions->getFAQ();
	    }
	    
		private function get_about_us() {
	        $this->functions->getAboutUs();
	    }
	    
	    private function get_contact_us() {
	        $this->functions->getContactUs();
	    }

	    private function get_privacy_policy() {
	        $this->functions->getPrivacyPolicy();
	    }

        private function get_terms_condition() {
	        $this->functions->getTermsCondition();
	    }
	    
	    private function get_legal_policy() {
	        $this->functions->getLegalPolicy();
	    }
	    
	    private function get_how_to_play() {
	        $this->functions->getHowToPlay();
	    }

	    private function get_rules() {
	        $this->functions->getRules();
	    }
	    

		/*
		 * End of API Transactions ----------------------------------------------------------------------------------
		*/

		public function processApi() {
			if(isset($_REQUEST['x']) && $_REQUEST['x']!=""){
				$func = strtolower(trim(str_replace("/","", $_REQUEST['x'])));
				if((int)method_exists($this,$func) > 0) {
					$this->$func();
				} else {
					echo 'processApi - method not exist';
					exit;
				}
			} else {
				echo 'processApi - method not exist';
				exit;
			}
		}

	}

	// Initiiate Library
	$api = new API;
	$api->processApi();

?>
