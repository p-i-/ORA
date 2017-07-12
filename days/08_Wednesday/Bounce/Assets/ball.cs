using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ball : MonoBehaviour {

	public GameObject camera;

	Vector3 initPos;
	Vector3 offset;
	// Use this for initialization
	void Start () {
		//print("started!");
		initPos = GetComponent<Transform>().position;

		Rigidbody rb = GetComponent<Rigidbody>();
		Vector3 force = new Vector3(100,0,0);
		rb.AddForce(force);

		offset = -GetComponent<Transform>().position 
		           + camera.GetComponent<Transform>().position;
	}
	
	// Update is called once per frame
	void Update () {
		//print("tick!");
		if ( GetComponent<Transform>().position.y < -10 ) {
			lives -= 1;
			GetComponent<Transform>().position = initPos;
			GetComponent<Rigidbody>().velocity = Vector3.zero;
		}

		camera.GetComponent<Transform>().position = 
			GetComponent<Transform>().position + offset;
	}

	int lives = 3;
	void OnGUI() {
		Rect myRect = new Rect(10, 10, 100, 20);
		GUI.Label(myRect, "Lives " + lives.ToString());
	}

	public float speed;

    void FixedUpdate ()
    {
        float moveHorizontal = Input.GetAxis ("Horizontal");
        float moveVertical = Input.GetAxis ("Vertical");

        Vector3 movement = new Vector3 (moveHorizontal, 0.0f, 
		                                    moveVertical);

		//print(moveHorizontal.ToString() + "," + moveVertical.ToString());

        GetComponent<Rigidbody>().AddForce (movement * speed);
    }
	
}//
