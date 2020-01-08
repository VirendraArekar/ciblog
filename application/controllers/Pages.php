<?php
    class Pages extends CI_Controller
    {
        public function index()
        {
            $data['title'] = 'Latest Posts';

            $this->load->view('templates/header');
            $this->load->view('posts/index', $data);
            $this->load->view('templates/footer');
        }

        public function home()
        {
            $data['title'] = 'Home';

            $this->load->view('templates/header');
            $this->load->view('pages/home', $data);
            $this->load->view('templates/footer');
        }

        public function about()
        {
            $data['title'] = 'About Us';

            $this->load->view('templates/header');
            $this->load->view('pages/about', $data);
            $this->load->view('templates/footer');
        }
    }
?>