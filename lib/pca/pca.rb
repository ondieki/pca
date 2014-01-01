module Pca
	def self.create(name)
		new_module = Object.const_defined?(name) ? Object.const_get(name) : nil
		unless new_module
			new_module = Module.new
			Object.const_set name, new_module
		end
	end

	def self.featureNormalize(mat =Matrix[ [1,2,3],[4,5,6],[7,8,9] ])
		myMat =  mat #Matrix[ [1,2,3],[4,5,6],[7,8,9] ];
		
		rows = myMat.row_size()
		cols = myMat.column_size()

		mat = [];

		(0..cols-1).each do |i|
			col = myMat.column(i)
			colNorm = col.normalize
			(mat ||= []) << colNorm
		end

		return Matrix.columns(mat)	 			
	end

	def self.mu(mat)
		sol = [];
		rows = mat.row_size()
		cols = mat.column_size()
		
		k = cols - 1
		for i in (0..k)
		 	row = mat.row(i).to_a
		 	total = row.inject(:+)
			rowMean = total / row.length
			puts rowMean
			(sol ||= []) << rowMean
		end
		vec = Vector.elements(sol, copy = true)
		
		return vec
	end
end