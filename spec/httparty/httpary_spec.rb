describe 'Httparty', :httparty do
    it 'Get' do
        response = HTTParty.get("https://jsonplaceholder.typicode.com/posts")
        content_type = response.headers['content-type'] 
        expect(content_type).to match(/application\/json/)       
    end
end