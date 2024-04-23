# Novu Simpletexting Provider

A Simpletexting sms provider library for [@novu/node](https://github.com/khulnasoft/teleflow)

## Usage

```javascript
import { SimpletextingSmsProvider } from '@novu/simpletexting';

const provider = new SimpletextingSmsProvider({
  apiKey: process.env.SIMPLETEXTING_API_KEY,
  from: process.env.SENDER_PHONE
  });
```
