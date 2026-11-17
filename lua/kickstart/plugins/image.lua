return {
  '3rd/image.nvim',
  -- Skip the luarocks build (breaks where luarocks is unavailable, e.g. WSL);
  -- use the ImageMagick CLI (`magick`) instead of the magick rock.
  build = false,
  opts = {
    processor = 'magick_cli',
  },
}
