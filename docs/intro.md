---
sidebar_position: -1
---

# Introduction

:::info Beta
This website is a new service and [your feedback](https://github.com/BiraruX/CmdrX/issues/new?assignees=&labels=scope%3Aixp&projects=&template=websitefeedback.md) will help improve it.
:::

## What is CmdrX and who is it for?

CmdrX is a console built for the Roblox platform. It's designed to make it easy for developers to write commands and easy for users to run those commands.

While originally made to help developers with debugging, CmdrX has been popularised as a general console and command system due to its powerful features and extensible nature. Of course, this doesn't mean that you have to use it for debugging or administration; CmdrX can be used in whatever way works for you.

## Why should I use it?

CmdrX is exceptionally user friendly thanks to type-safety and intelligent, context-aware auto-complete. This makes a user made aware of typos and mistakes before they even hit enter. Plus, a developer's command implementations doesn't have to check or transform types, you get exactly what you ask for.

Unlike other "admin commands" systems on Roblox, CmdrX quietly integrates with your game rather than getting in the way. This makes it super easy to write your own commands or types which 'plug into' your existing code. Plus, CmdrX is incredibly snappy and will do as much work as possible on the client; providing users, especially those with limited connections, quick feedback.

CmdrX provides a number of helpful commands and a range of powerful types out of the box, but of course you don't have to use them. We're also working on creating a [Cookbook](/docs/community/cookbook) which'll showcase even more helpful commands and cool things you can do with CmdrX.

CmdrX also provides [meta-commands](/docs/metacommands), empowering users to:

- create aliases and/or chain commands together
- bind commands to inputs (like key presses)
- run commands when you join the game (which, in turn, can do the above!)

CmdrX has been around for over five years and while it's been continuously improved since, it's stood the test of time and is trusted in games with billions of visits earning millions of dollars worth of revenue. For many developers, CmdrX is their go-to when they need a console system, saving them the potentially hundreds of hours of time it would take to develop their own.

## Why _shouldn't_ I use it?

While we think CmdrX is amazing, it may not be right for you if:

**You have limited Luau knowledge.**

While CmdrX isn't super complex, it may be difficult for beginners and those with limited programming experience.

You'll need to write your own [command implementations](/docs/commands) and [permissions](/docs/hooks) yourself; take a look at the [How do I get help with CmdrX?](#how-do-i-get-help-with-CmdrX) section below for more details. Similarly, any features which CmdrX doesn't provide (like bespoke types or logging) you'll also need to write yourself.

**You want a large set of pre-made ("plug and play") commands.**

While CmdrX has a set of built-in commands, these are fairly limited. There are plenty of open source "admin commands" systems which, while we can't comment on their quality, do provide a large number of diverse commands coupled with easy set-up.

You may find our [Cookbook](/docs/community/cookbook) helpful but it's still fairly limited and you'll need to make the bulk of commands yourself.

**Mobile support is mission-critical.**

CmdrX's mobile support isn't perfect and is lacking in some areas. Also, you'll need to add some way for mobile and other non-keyboard users to be able to open the console.

First and foremost, CmdrX is a keyboard experience and it has been designed with this in mind. Although, if you think there's any areas that could be improved [feel free to open an Issue ticket](https://github.com/BiraruX/CmdrX/issues).

## How do I get started?

:::warning Do not modify the source code

Please **do not** modify the source code of CmdrX for your game. Instead, use its API to customise the behaviour you want. Modifying the source code makes it much harder for you to receive future updates.

There shouldn't be any reason why you need to modify the source code of CmdrX (unless you're [adding a new feature or fixing a bug](/docs/contribute)). If there's something you think we're missing, please [open an issue](https://github.com/BiraruX/CmdrX).

:::

Take a look at the [Installation guide](/docs/installation), you can then continue through our documentation from there.

You can also read through the [API reference](/api/CmdrX). While we recommend reading the API reference to get a full understanding of CmdrX, it's not required.

**We recommend against following any tutorials, particularly on YouTube or the DevForum, to set up CmdrX.** These tend to be incorrect or outdated. Take a look at the [How do I get help with CmdrX?](#how-do-i-get-help-with-CmdrX) section below for more details on how to get support and what resources are available.

## How do I get help with CmdrX?

:::tip Luau knowledge — <u>please read!</u>

If you don't know how to program with [Luau](https://luau-lang.org) then we recommend you don't use CmdrX. CmdrX is targeted towards those with experience in the Luau language and you will run into bigger problems down the road if you don't know what you're doing.

We unfortunately can't 'hand hold' you through things. Setup is a huge, crucial step to determine if you should be using CmdrX or not. It may be a bit frustrating now, but later on if something breaks the frustration will exponentially increase. This is the reason why we tell those who need to touch up on their Luau or programming skills to do so beforehand.

Our support channels exist to provide help with CmdrX-specific things, like our [API](/api). We cannot answer general Luau questions or help you with a specific command implementation (e.g. "how do I make a fly command?"), although you may find our [Cookbook](/docs/community/cookbook) helpful.

:::

There are plenty of resources available to help you with CmdrX, such as this website and our Discord server, but we've been made aware of a number of DevForum guides and YouTube videos which provide incorrect or outdated instructions.

**We recommend you stick to our official resources, especially if you're new to CmdrX.** If you decide to use unofficial resources, then the level of support we can provide (for instance in our Discord server) is limited.

The [CmdrX Discord server](https://discord.gg/KTbpAEhWsf) has a dedicated CmdrX help channel, which is where we recommend you go to get any support you need.
