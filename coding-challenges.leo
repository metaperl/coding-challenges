<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="metaperl.20191005013727.2" a="E"><vh>Coding Challenges</vh>
<v t="metaperl.20191005014851.1" a="E"><vh>Valid Parentheses</vh>
<v t="metaperl.20191005015741.1" a="E"><vh>Logic</vh>
<v t="metaperl.20191005021622.1"><vh>initial_mode</vh></v>
<v t="metaperl.20191005021709.1"><vh>expect-close-paren</vh></v>
</v>
<v t="metaperl.20191005022526.1"><vh>@file valid_parens.py</vh></v>
<v t="metaperl.20191005025627.1"><vh>Google Group Post of Version 1</vh></v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="metaperl.20191005013727.2"></t>
<t tx="metaperl.20191005014851.1">In a [reddit post](https://www.reddit.com/r/Python/comments/dd1efi/im_on_a_mission_to_explain_all_popular_coding/) someone introduced this challenge, linked to the following [YouTube video](https://www.youtube.com/watch?v=hlbuyOgxHbs).
</t>
<t tx="metaperl.20191005015741.1">The program breaks down into 2 string scanning/validating modes:

initial-mode:
- accepts: open paren OR end of string
- action-on-close-paren: move to expect-close-paren-mode
- action-on-end-of-string: return True

expect-close-paren-mode:
- accept: matching close paren OR another open paren
- action-on-close-paren: return True
- action-on-new-open-paren: return expect-close-paren-mode 
- action-on-end-of-string: return False

</t>
<t tx="metaperl.20191005021622.1">initial-mode:
- accepts: open paren OR end of string
- action-on-close-paren: move to expect-close-paren-mode
- action-on-end-of-string: return True
</t>
<t tx="metaperl.20191005021709.1">expect-close-paren-mode:
- accept: matching close paren OR another open paren
- action-on-close-paren: return True
- action-on-new-open-paren: return expect-close-paren-mode 
- action-on-end-of-string: return False</t>
<t tx="metaperl.20191005025627.1"># Title
Literate Programming in Leo Phase 1

In the last 24 hours, I've had 3 various, completely different things to do and only the [Leo editor](https://leoeditor.com) could do all of them:
* I converted a decade-old mindmap to Leo format and [displayed it with LeoVue](https://groups.google.com/forum/#!topic/leo-editor/mnFLZbPq0pU).
* I decided to take notes on a very complex book I'm starting to read
* And now we come to the purpose of this post, to explore how to case-out your logical thinking about a problem and eventually have a working program that you can run via Leo.

# Writing a Valid Parens Program in Literate LEO Programming

A few days ago someone posted a [coding challenge](https://www.reddit.com/r/Python/comments/dd1efi/im_on_a_mission_to_explain_all_popular_coding/) that I knew I could solve, but I knew I would be better off if I could specify all the logical cases.

# So what is a program that validates a string for matching parentheses?

In my eyes, it breaks down into 2 modes. In mode 1: you accept an open paren or an empty string. This screenshot shows this logic node: 
https://i.imgur.com/XoXVgFx.png

In mode 2: you accept the complementary closed paren or another open parenthesis. You balk on empty string. This screenshot show this logic:
https://i.imgur.com/HZe2Txk.png

# Now that I have my logic, how do I intertwine Python code with it?

I had hoped to put Python code as children nodes of my logic nodes, but I ended up creating a separate node and flipping back and forth to transliterate the logic into Python code. Screenshot of separate node:
https://i.imgur.com/O68cen4.png

# So my questions are:

1. How to test my Python code in Leo?
2. How to export my Python code to disk for execution outside Leo?
3. What is a better way to structure this .leo file so that the logic and code are interspersed?

The existing code is here:



</t>
</tnodes>
</leo_file>
