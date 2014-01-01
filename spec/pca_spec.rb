require 'spec_helper'

describe Pca do
	it 'Creates a PCA module' do
		defined?(Fruit).should == nil
		Pca.create('Fruit')
		defined?(Fruit).should_not == nil
	end

	it 'Returns a normalized vector' do
		Pca.featureNormalize(Matrix[ [1,2,3],[4,5,6],[7,8,9] ]).should == Matrix[[0.12309149097933272, 0.20739033894608505, 0.2672612419124244], [0.4923659639173309, 0.5184758473652127, 0.5345224838248488], [0.8616404368553291, 0.8295613557843402, 0.8017837257372732]]
	end

	it 'returns mu, the mean of each feature i.e. row-wise means' do
		Pca.mu(Matrix[ [1,4,4],[4,6,8],[7,8,9] ]).should == Vector[3,6,8]
	end	
end