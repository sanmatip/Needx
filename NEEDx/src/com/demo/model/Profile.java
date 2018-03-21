package com.demo.model;



import org.springframework.stereotype.Component;

@Component
public class Profile {

  /** The image id. */
  private int imageId;

  /** The image name. */
  private String imageName;

  /** The image path. */
  private String imagePath;

  /*------------------------------------------------------------------------------------------------------------
   * Construct Methods
   *------------------------------------------------------------------------------------------------------------*/

  /**
   * Construct profile bean with null description.
   */
  public Profile() {}

  /**
   * Construct profile bean with provided description.
   * 
   * @param imageId the image id
   * @param imageName the image name
   * @param imagePath the image path
   */
  public Profile(int imageId, String imageName, byte[] proImage, String imagePath) {
    super();
    this.imageId = imageId;
    this.imageName = imageName;
    this.imagePath = imagePath;
  }

  /*----------------------------------------------------------------------------------------------------------------
   * Dependency Injection Methods
   *---------------------------------------------------------------------------------------------------------------*/

  /**
   * Gets the image id.
   * 
   * @return the imageId
   */
  public int getImageId() {
    return imageId;
  }

  /**
   * Sets the image id.
   * 
   * @param imageId the imageId to set
   */
  public void setImageId(int imageId) {
    this.imageId = imageId;
  }

  /**
   * Gets the image name.
   * 
   * @return the imageName
   */
  public String getImageName() {
    return imageName;
  }

  /**
   * Sets the image name.
   * 
   * @param imageName the imageName to set
   */
  public void setImageName(String imageName) {
    this.imageName = imageName;
  }

  /**
   * Gets the image path.
   * 
   * @return the imagePath
   */
  public String getImagePath() {
    return imagePath;
  }

  /**
   * Sets the image path.
   * 
   * @param imagePath the imagePath to set
   */
  public void setImagePath(String imagePath) {
    this.imagePath = imagePath;
  }

  /**
   * To string.
   * 
   * @return the string
   */
  @Override
  public String toString() {
    return "Profile [imageId=" + imageId + ", imageName=" + imageName + ", imagePath=" + imagePath
        + "]";
  }
}
