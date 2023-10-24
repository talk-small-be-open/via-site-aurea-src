baselines
baseline: spec
	<baseline>
	| viaRepo |
	
	viaRepo := 'github://talk-small-be-open/via-base-src:aurea-master/src'.

	spec for: #'common' do: [
		spec baseline: 'Via' with: [
			spec
				repository: viaRepo;
				loads: #('default' 'hep')
		].
	
		spec baseline: 'ViaWithTests' with: [
			spec
				repository: viaRepo;
				loads: #('default' 'Tests');
				className: 'BaselineOfVia'.
		].
	

		spec package: 'ViaSiteAurea' with: [
			spec 
				requires: #('Via')].

		spec package: 'ViaSiteAurea-Tests' with: [
			spec 
				requires: #('ViaSiteAurea' 'ViaWithTests')].


		spec
			group: 'default' with: #('Core' );
			group: 'Core' with: #('ViaSiteAurea' );
			group: 'Tests' with: #('ViaSiteAurea-Tests' ).
		].