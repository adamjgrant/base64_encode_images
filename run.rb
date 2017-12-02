input_dir  = "cats"
output_dir = "#{Dir.pwd}/#{input_dir}b64"
images     = Dir["#{Dir.pwd}/#{input_dir}/*"]

images.each do |image|
  image_basename = File.basename(image).split(".")[0]
  output_filename = image_basename + ".txt"
  %x(base64 #{image} > #{output_dir}/#{output_filename})
end
