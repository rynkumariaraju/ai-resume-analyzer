class OpenaiService
    def self.analyze_resume(text)
      client = OpenAI::Client.new(access_token: ENV["OPENAI_API_KEY"])
  
      begin
        response = client.chat(
          parameters: {
            model: "gpt-4o-mini",
            messages: [
              { role: "user", content: "Analyze this resume:\n\n#{text}" }
            ]
          }
        )
  
        response.dig("choices", 0, "message", "content")
  
      rescue Faraday::TooManyRequestsError
        retry
      end
    end
  end