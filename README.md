# Defold Ads library project
This project is a [Defold](https://www.defold.com) library project that can be used in Defold games and applications targeting mobile devices to show ads provided by several different ad networks. The library currently supports:
* [Leadbolt](https://www.leadbolt.com)
* [Appnext](https://www.appnext.com)
* [Adcash](https://www.adcash.com)


# Requirements
The project leverages the `webview` component released with [Defold 1.2.84](https://forum.defold.com/t/defold-1-2-84-has-been-released/2272). This means that you must run at least Defold 1.2.84 to show ads using the library project.

# Installation
Installing and using this project in your game involves the following steps:

## Step 1 - Create ad network accounts
Sign up to one or more of the supported ad networks. Depending on the chosen ad network you might also need to create one or more ads, campaigns, placements or similar. Follow the instructions on the respective ad networks dashboard or self service portal.

## Step 2 - Add the Defold Ads library project as a dependency
Open the game.project file for the project in which you intend to include ads. In the Dependencies field in the Project section add the URL to the zip file of [one of the available releases](https://github.com/britzl/defads/releases) of the Defold Ads library project. If you are uncertain how to do this then it is recommended that you read more about setting up library dependencies [in the official documentation](http://docs.defold.com/manuals/libraries/#_setting_up_library_dependencies).

Once you have the dependency added to your game.project file you can fetch the dependency so that it is included in your Project Explorer. You fetch your library dependencies using the Project->Fetch Libraries menu option in the Defold editor.

When you have done Fetch Libraries you should see a new folder named `defads` in the project explorer. This folder contains the code and assets provided by the Defold Ads library project.

## Step 3 - Include the game objects for chosen ad networks
Each of the supported ad networks has a corresponding game object file in in the Defold Ad library project (e.g. `/defads/leadbolt/leadbolt.go`). Add the game objects for the ad networks you wish to use to a collection in your project. You will interact with these game objects using message passing so it's important that the game objects are available and loaded when you wish to show ads in your game.

## Step 4 - Show ads
You show an ad by posting a message to the added game object. The message and message data is specific to each ad network and the details of how to use each ad network is described below.

## Step 5 - Set up and forward IAC invocations
Some ads will generate a close button that can be used to close the ad and return to the game. The button will generate an IAC callback (Inter-App Communication) which is a Defold mechanism to allow apps to exchange data (or in this case the ad and the running app). If you are not already using the IAC module in Defold you first need to set up a listener to receive IAC invocations:

	iac.set_listener(function(self, payload, type)
		-- handle iac callbacks here
	end)

Once you have IAC setup you need to forward any IAC callbacks to ads that you are showing:

	iac.set_listener(function(self, payload, type)
		msg.post("url_to_ad_go", "iac", { payload = payload }) -- do this for every ad you are showing
	end)

# Usage
Once you have gone through and setup the steps described in the installation section above your app is ready to display ads. Follow the instructions below to show ads from the different ad networks:

## Showing Leadbolt ads
You show a Leadbolt ad by posting the following message:

	msg.post("url_to_leadbolt_go", "show", { section_id = 1234 })

Where `section_id` corresponds to the section id as shown in the code snippet provided by Leadbolt for each ad placement you create in the Leadbolt developer portal.

## Showing Appnext ads
The Appnext game object supports Appnext Interstitial and Video ads. You show interstitial and video ads by posting one of the following messages:

	msg.post("url_to_addnext_go"), "show_interstitial", { android_id = "your-android-id", ios_id = "your-ios-id" })
	msg.post("url_to_addnext_go"), "show_video", { android_id = "your-android-id", ios_id = "your-ios-id" })

Where `android_id` and `ios_id` corresponds to the placement id for the apps created in the Appnext self-service portal.

## Showing Adcash ads
You show an Adcash ad by posting the following message:

	msg.post("url_to_adcash_go", "show", { zone_id = 1234 })

Where `zone_id` corresponds to the zone id as shown in the zones section of the Adcash console.

## Callbacks
When an ad is closed it will post an `ad_closed` message back to the game object which posted the show message, as described above. If something goes wrong while showing the ad an `ad_error` message will be posted instead.

# Support
If you come across a bug or have any questions about this project then please post the on the [official Defold forum](https://forum.defold.com).

# Contribute
We happily accept pull requests for bugfixes and improvements or if you have added support for more ad networks.

# Limitations
Since this library leverages the `webview` component in Defold it means that the library only can support ad networks with HTML5 or mobile web support. No native SDKs can at the time of writing be used in Defold.

The current webview implementation in Defold is full screen only. This means that it is not possible to show  banner ads or similar on top of your game content. This is likely to change in the near future. Please keep an eye on the [release notes for upcoming releases](https://forum.defold.com/c/releasenotes) and make your voice heard on the forum if you wish to increase the priority of this work.

# License
This library is released under the same [Terms and Conditions as the Defold editor and service itself](http://www.defold.com/about-terms/).
