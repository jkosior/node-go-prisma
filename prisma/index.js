const { createServer } = require('http');

const server = createServer();
server.listen(3000, () => setTimeout(
    () => server.close(),
    10000,
  )
);