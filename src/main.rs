use image2::*;

fn main() -> Result<(), Error> {
    // Load an image from disk
    let image = Image::<f32, Rgb>::open("cat.jpg")?;

    let conv = filter::convert();
    let dest: Image<f32, Gray> = image.run(conv, None);

    // Save an image to disk
    dest.save("graycat.jpg")?;

    Ok(())
}
