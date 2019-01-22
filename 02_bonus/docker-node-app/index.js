const http = require('http');
const port = process.env.PORT || 3000;

let server = http.createServer((req, res) => {
	let html = `<h1>Environment Variables</h1><br>`;
	Object.keys(process.env).forEach((k) => {
		html += `${k} = ${process.env[k]} <br>`
	});
	res.writeHead(200, {
		'content-type': 'text/html'
	});
	return res.end(html);
});
server.listen(port);
console.log(`Server running on port ${port}`);
