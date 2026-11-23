# AI Resume Analyzer

A Ruby on Rails application that allows a user to upload a PDF resume, extract its text and request AI-generated feedback through the OpenAI API.

## Features

- Resume upload through the Rails application.
- PDF text extraction using the `pdf-reader` gem.
- AI-powered resume feedback using the Ruby OpenAI client.
- A Rails interface for submitting a resume and viewing feedback.

## Technology stack

- **Language:** Ruby (Gemfile specifies Ruby 3.2.2)
- **Web framework:** Ruby on Rails 7.1
- **Database:** SQLite
- **AI integration:** OpenAI API via `ruby-openai`
- **PDF processing:** `pdf-reader`
- **Environment configuration:** `dotenv-rails`
- **Application server:** Puma
- **Background processing dependencies:** Sidekiq and Redis

## Getting started

### Prerequisites

- Ruby 3.2.2
- Bundler
- SQLite
- Redis, if using the background-job functionality

### Installation

Clone the repository and install its dependencies:

```bash
git clone https://github.com/rynkumariaraju/ai-resume-analyzer.git
cd ai-resume-analyzer
bundle install
```

Prepare the database and start the Rails server:

```bash
bin/rails db:create
bin/rails db:migrate
bin/rails server
```

Open the local Rails address shown in the terminal.

## Configuration

The application uses the OpenAI Ruby client and `dotenv-rails`. Configure the API credential in your local environment according to the application's implementation. Do not commit API keys or other secrets to the repository.

## Application routes

- `GET /` – opens the resume submission page.
- `GET /resumes/new` – displays the resume form.
- `POST /resumes` – submits the resume for processing.

## Repository notes

This project demonstrates a Rails-based file upload workflow, PDF text extraction and integration with an external AI API. Review the source code for the current implementation details and configuration requirements.

---

**Project type:** Personal software development project  
**Focus areas:** Ruby on Rails, RESTful web application patterns, PDF processing and API integration
