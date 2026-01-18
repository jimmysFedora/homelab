module.exports = {
	platform: 'gitea',
	endpoint: 'https://gitea-demo-1.mistyfumes.dev/api/v1/', // set this to the url of your gitea instance
	gitAuthor: 'Renovate Bot <renovate-bot@example.com>', // set the email address to whatever email your gave this user in your gitea
	username: 'renovate-bot',
	autodiscover: true,
	onboardingConfig: {
		$schema: 'https://docs.renovatebot.com/renovate-schema.json',
		extends: ['config:recommended'],
	},
	optimizeForDisabled: true,
	persistRepoData: true,
};