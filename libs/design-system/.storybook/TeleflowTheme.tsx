import { ThemeVarsPartial } from '@storybook/theming';
import { create } from '@storybook/theming/create';

const themeBase: ThemeVarsPartial = {
  base: 'light',
  brandTitle: 'Teleflow Design System',
  brandTarget: '_self',
}
/**
 * Teleflow Design System theme for Storybook
 * 
 * @see https://storybook.js.org/docs/configure/theming
 */
export const lightTheme = create({
  ...themeBase,
  brandImage: './teleflow-logo-light.svg',
});

export const darkTheme = create({
  ...themeBase,
  base: 'dark',
  brandImage: './teleflow-logo-dark.svg',
});
