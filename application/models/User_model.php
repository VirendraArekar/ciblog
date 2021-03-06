<?php
   class User_model extends CI_Model
   {
       public function register($enc_password)
       {
           // User Data Array
           $data = array
                     (
                           'name'     => $this->input->post('name'),
                           'email'    => $this->input->post('email'),
                           'username' => $this->input->post('username'),
                           'password' => $enc_password,
                           'zipcode'  => $this->input->post('zipcode')
                     );
           // Insert User
           return $this->db->insert('users', $data);
       }

       //Login Function
       public function login($username, $password)
       {
           //Validate
           $this->db->where('username', $username);
           $this->db->where('password', $password);

           $result = $this->db->get('users');

           if($result->num_rows() == 1)
           {
               return $result->row(0)->id;
           }
           else
           {
               return false;
           }
       }

       // Check Username Exists
       function check_username_exists($username)
       {
           $query = $this->db->get_where('users',array('username' => $username));
           if(empty($query->row_array()))
           {
               return true;
           }
           else
           {
               return false;
           }
       }

       // Check Email Exists
       function check_email_exists($email)
       {
           $query = $this->db->get_where('users',array('email' => $email));
           if(empty($query->row_array()))
           {
               return true;
           }
           else
           {
               return false;
           }
       }
   }
?>