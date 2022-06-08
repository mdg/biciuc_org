
import { Lang } from './lang';

export class BilingualText
{
    en: string;
    es: string;

    constructor(en: string, es: string)
    {
        this.en = en;
        this.es = es;
    }

    text(lang: Lang): string
    {
        switch (lang) {
            case Lang.EN:
                return this.en;
            case Lang.ES:
                return this.es;
        }
    }
}

export class BilingualHeaderText
{
    h: BilingualText;
    t: BilingualText;

    constructor(en_h: string, en_t: string, es_h: string, es_t: string)
    {
        this.h = new BilingualText(en_h, es_h);
        this.t = new BilingualText(en_t, es_t);
    }
}
