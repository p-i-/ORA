using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ball : MonoBehaviour {

	public GameObject camera;

	Vector3 initPos;
	Vector3 offset;
	public float speed;
	int lives = 3;

	// Use this for initialization
	void Start () {
		//print("started!");

		// Prevent auto-rotation!
        Screen.orientation = ScreenOrientation.LandscapeLeft;

		// Both these 2 lines are identical!  transform is shorthand for GetComponent<Transform>()
		initPos = GetComponent<Transform>().position;
		initPos = transform.position;

		// Uncomment to give player an initial push
		//Rigidbody rb = GetComponent<Rigidbody>();
		//Vector3 force = new Vector3(10,0,0);
		//rb.AddForce(force);

		// Get offset from player to camera (we'll use this to reposition the camera each frame)
		offset = -transform.position + camera.transform.position;
	}
	
	// Update is called once per frame
	void Update () {
		//print("tick!");

		// If the ball has fallen off the plane ...
		if ( transform.position.y < -10 ) {
			lives -= 1;
			// Put it back where it started!
			transform.position = initPos;
			GetComponent<Rigidbody>().velocity = Vector3.zero;
		}

		// Reposition camera!
		camera.transform.position = transform.position + offset;
	}

	// OnGUI also gets called each frame, AFTER the frame has been rendered.
	// Here we can put a 2D overlay (e.g. HUD, lives, etc)
	void OnGUI() {
		Rect myRect = new Rect(10, 10, 100, 20);
		GUI.Label(myRect, "Lives " + lives.ToString());
	}

	// FixedUpdate gets called at 60Hz.  Update might vary (if a frame takes a long time to render, say). 
	// But FixedUpdate is always on-time. So do physics calculations in FixedUpdate.
    void FixedUpdate ()
    {
        // float moveHorizontal = Input.GetAxis ("Horizontal");
        // float moveVertical = Input.GetAxis ("Vertical");
		// print(moveHorizontal.ToString() + "," + moveVertical.ToString());

        // Take input from keyboard OR accelerometer.
		// So this will work on OSX or iOS.
		float moveHorizontal = Input.acceleration.x  +  Input.GetAxis ("Horizontal");
        float moveVertical   = Input.acceleration.y  +  Input.GetAxis ("Vertical");
		
        Vector3 movement = new Vector3 (moveHorizontal, 0.0f, moveVertical);
        GetComponent<Rigidbody>().AddForce (speed * movement);
    }	
}
