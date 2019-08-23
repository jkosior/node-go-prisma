const { createServer } = require('http');
const { fromEvent } = require('rxjs');

const server = createServer();
const PORT = 4000;

const onRequest$ = ([req, res]) => {
  console.log(Object.keys(req));
  res.status = 200;
  res.end()
}

const onError$ = (err) => {
  console.log(err);
}

const onDone$ = () => {
  console.log('Server quit. ')
}

fromEvent(server, 'request')
  .subscribe(
    onRequest$,
    onError$,
    onDone$,
  )

server.listen(PORT, () => console.log(`server is listening on port ${PORT}`));