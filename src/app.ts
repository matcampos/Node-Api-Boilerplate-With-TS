import config from './config/config';
import app from './config/express';
import dotenv from 'dotenv';
dotenv.config();

app.listen(config.port, () => {
    console.info(`server started on port ${config.port} (${config.env})`); // eslint-disable-line no-console
});