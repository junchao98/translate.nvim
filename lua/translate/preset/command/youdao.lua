local M = {}

---@param lines string[]
---@param command_args table
---@return string
---@return string[]
function M.cmd(lines, command_args)
  local text = table.concat(lines, "\n")

  local source = command_args.source or ""
  local target = command_args.target

  local cmd = "youdao"
  local args = {
  }

  -- local options = require("translate.config").get("preset").command.translate_shell
  -- if #options.args > 0 then
  --   args = vim.list_extend(args, options.args)
  -- end

  -- table.insert(args, source .. ":" .. target)
  table.insert(args, text)

  return cmd, args
end

function M.complete_list()
  -- See <https://github.com/soimort/translate-shell/wiki/Languages>
  local list = {
    "af",
    "afr",
    "am",
    "amh",
    "ar",
    "ara",
    "az",
    "aze",
    "ba",
    "bak",
    "be",
    "bel",
    "bg",
    "bul",
    "bn",
    "ben",
    "bs",
    "bos",
    "ca",
    "cat",
    "ceb",
    "ceb",
    "co",
    "cos",
    "cs",
    "ces",
    "cy",
    "cym",
    "da",
    "dan",
    "de",
    "deu",
    "el",
    "ell",
    "en",
    "eng",
    "eo",
    "epo",
    "es",
    "spa",
    "et",
    "est",
    "eu",
    "eus",
    "fa",
    "fas",
    "fi",
    "fin",
    "fj",
    "fij",
    "fr",
    "fra",
    "fy",
    "fry",
    "ga",
    "gle",
    "gd",
    "gla",
    "gl",
    "glg",
    "gu",
    "guj",
    "ha",
    "hau",
    "haw",
    "haw",
    "he",
    "heb",
    "hi",
    "hin",
    "hmn",
    "hmn",
    "hr",
    "hrv",
    "ht",
    "hat",
    "hu",
    "hun",
    "hy",
    "hye",
    "id",
    "ind",
    "ig",
    "ibo",
    "is",
    "isl",
    "it",
    "ita",
    "ja",
    "jpn",
    "jv",
    "jav",
    "ka",
    "kat",
    "kk",
    "kaz",
    "km",
    "khm",
    "kn",
    "kan",
    "ko",
    "kor",
    "ku",
    "kur",
    "ky",
    "kir",
    "la",
    "lat",
    "lb",
    "ltz",
    "lo",
    "lao",
    "lt",
    "lit",
    "lv",
    "lav",
    "mg",
    "mlg",
    "mhr",
    "mhr",
    "mi",
    "mri",
    "mk",
    "mkd",
    "ml",
    "mal",
    "mn",
    "mon",
    "mr",
    "mar",
    "mrj",
    "mrj",
    "ms",
    "msa",
    "mt",
    "mlt",
    "mww",
    "mww",
    "my",
    "mya",
    "ne",
    "nep",
    "nl",
    "nld",
    "no",
    "nor",
    "ny",
    "nya",
    "or",
    "ori",
    "otq",
    "otq",
    "pa",
    "pan",
    "pap",
    "pap",
    "pl",
    "pol",
    "ps",
    "pus",
    "pt",
    "por",
    "ro",
    "ron",
    "ru",
    "rus",
    "rw",
    "kin",
    "sd",
    "snd",
    "si",
    "sin",
    "sk",
    "slk",
    "sl",
    "slv",
    "sm",
    "smo",
    "sn",
    "sna",
    "so",
    "som",
    "sq",
    "sqi",
    "sr-Cyrl",
    "srp",
    "sr-Latn",
    "srp",
    "st",
    "sot",
    "su",
    "sun",
    "sv",
    "swe",
    "sw",
    "swa",
    "ta",
    "tam",
    "te",
    "tel",
    "tg",
    "tgk",
    "th",
    "tha",
    "tk",
    "tuk",
    "tl",
    "tgl",
    "tlh",
    "tlh",
    "tlh-Qaak",
    "tlh",
    "to",
    "ton",
    "tr",
    "tur",
    "tt",
    "tat",
    "ty",
    "tah",
    "udm",
    "udm",
    "ug",
    "uig",
    "uk",
    "ukr",
    "ur",
    "urd",
    "uz",
    "uzb",
    "vi",
    "vie",
    "xh",
    "xho",
    "yi",
    "yid",
    "yo",
    "yor",
    "yua",
    "yua",
    "yue",
    "yue",
    "zh-CN",
    "zho",
    "zh-TW",
    "zho",
    "zu",
    "zul",
  }

  return list
end

return M
