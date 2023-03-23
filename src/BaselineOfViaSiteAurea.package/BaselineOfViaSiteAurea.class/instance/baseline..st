baselines
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec baseline: 'Via' with: [
			spec
				repository: 'github://talk-small-be-open/via-base-src:aurea-master/src';
				loads: #('default')
		].

		spec package: 'ViaSiteAurea' with: [
			spec 
				requires: #('Via')].

		spec
			group: 'default' with: #('Core' );
			group: 'Core' with: #('ViaSiteAurea' ). ].