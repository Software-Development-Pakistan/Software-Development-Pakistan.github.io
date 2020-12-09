---
title: Developer Operations - DevOps
layout: page
comments: true
---

# DevOps

DevOps is the modern approach in `Agile` to solve the problem of the communication between the `tester`, the `developer`, and the `operations` team. In the software development cycle, the developer is the person that is meant to develop features in code, the tester is meant to make sure all the tests are satisfied and nothing breaks in the development environment. The `operations` has to take care of pushing those new changes into the production environment and to make sure it does not break anything else. This whole cycle mainly comprises of the following main points,

1. Designing (the infrastructure and networking)
2. Observability (implementing Logging, Metrics and Tracing)
3. Automation (CI/CD pipelines, deployments, auto-scaling )

The idea is that developer wants to make changes and push those to the production as soon as possible, also called `early to market`, but doing this in the past has resulted in the Ops person receiving calls at 2 AM in the morning about something critical breaking - no one likes that. The `Ops` person on the other hand wants to strive to maintain as much stability as possible, and always pushing new changes ( increasing the velocity ) leads to breaks - which is undesired.

So the idea has been mainly on focusing on automation in order to make changes as quickly as possible, and finding the way to maintan good velocity as well as stability.

## Table Of Contents
- [DevOps](#devops)
- [Table Of Contents](#table-of-contents)
- [Please Read First](#please-read-first)
- [An Introduction](#an-introduction)
- [Technologies](#technologies)
- [General](#general)
- [Getting Started](#getting-started)
- [People To Follow](#people-to-follow)
- [FAQ](#faq)
- [Learning Materials](#learning-materials)
  - [Courses](#courses)
  - [Books To Look Into](#books-to-look-into)
  - [For Testing Software](#for-testing-software)
  - [Doing the Jobs of Ops](#doing-the-jobs-of-ops)
  - [Continuous Delivery](#continuous-delivery)
  - [Agile in General](#agile-in-general)
  - [Youtube Channels](#youtube-channels)
  - [Roadmap](#roadmap)
  - [MISC](#misc)
- [References](#references)

# Please Read First

# An Introduction

The modern DevOps consists of automated sets of tests that keep checking if the new changes break anything, it has an automated sense of commands that take in some configuration files, make sense of the changes, and apply those settings to a containzired environment. Usually, you'll find the changes being `deployed` to `containers` that have the complete environment setup for the customer. 

So what is the remaining work? It's to configure `.json`, `.yaml / .yml` files that take in `manifestations` of the `images` that you want to push to production and making sure and note of what changes happen when and what breaks and what's get fixed, most likely through a versioning tool such as `git`. Companies also prefer to use `github`, `gitlab` or `bitbucket` for extra features.

Want to see a repo with all these concepts and questions? Check out [Tikam02/DevOps-Guide](https://github.com/Tikam02/DevOps-Guide)!

# Technologies

For being a DevOps practitioner, you should be familiar with these ideas:

- Version Control and Source Code Management (SCM)
  - Git / GitHub / GitLab / BitBucket
- Virtualization
  - Docker / Virtual Machines (VM)
- Configuration Management
  - Ansible / Chef / Puppet
- Automation (CI/CD) Server
  - Jenkins / TeamCity / Circle CI / BuildKite / Azure DevOps / BitBucket Pipelines / GitLab / GitHub Actions / etc.
- Scripting
  - Bash / Python / Perl / etc.
- Orchestrator Engine
  - Kubernetes / Docker Swarm / Docker Compose / AWS ECS
- Automated Testing
  - Test Driven Development (TDD), BDD, etc.
- Code Quality
  - SonarQube
- Delivery Reports
  - DORA Metrics
- Cloud Computing
  - Amazon Web Services (AWS), Google Cloud Platform (GCP), Microsoft Azure
- Infrastructure as Code (IaC)
  - Terraform / AWS CloudFormation / Plumi
- Agile
  - Scrum / Kanban / Lean
- Working With CLI
  - Zsh / Fish / Bash / AWS CLI
- Continuous Integration
- Continuous Delivery
  - Docker Hub / GitHub / JFrog / etc.
- Continuous Deployment
  - Ansible / CodeDeploy / etc.

# General

# Getting Started
It is hard to justify what is DevOps or how to implement it in a proper way. You can read about it in [FAQs](#faq). To become an engineer with firm DevOps concepts you have to be a Developer or Operations person at first. Then you pivot into being a DevOps Engineer or Systems Engineer as it is formally called. An extension to DevOps is Site Reliability Engineering (SRE). A complete DevOps person would know one of the technology from each segment mentioned in [Technologies](#technologies).

# People To Follow

# FAQ

### Is DevOps a title (designation or role), a team, a practice or something else?
#### DevOps is the set of practices and mindset for modern software delivery. It provides highlevel guidelines on automation, continuous improvements, and increasing the end to end value in software development lifecycle. 

### What is SRE (Site Reliability Engineering)? How is it different from DevOps?
#### SRE is a term coined by Google. SRE is one of the way to implement DevOps and can be understood as a concrete set of practices based on abstraction defined by DevOps. SRE has terms like Toil, SLIs, SLOs, SLAs, etc which all serve a purpose to improve overall system value.

# Learning Materials
- [Onboarding of SRE in Linkedin](https://github.com/linkedin/school-of-sre)

## Courses

## Books To Look Into
- [Continuous Delivery in the Wild by Pete Hodgson](https://www.oreilly.com/library/view/continuous-delivery-in/9781492077701/)

## For Testing Software
- ***Sample Application On JSFiddle***
  - [Creating & Managing Users with Google Firebase + Domain Validator](https://jsfiddle.net/acowan/tsk607z9/). This is the sample application whose code appears in the test examples below.
  - Unit Test Example on JS Fiddle: [Unit Testing Domain Validator (with Jasmine)](https://jsfiddle.net/acowan/esd4hL7r/). Taking look at a Unit Test.
  - Unit Test Practice Problem on JS Fiddle: [Jasmine Test Hello World, Running oaccess n jsFiddle](https://jsfiddle.net/acowan/ya2dct10/). This is the simple 'Hello World' example you can play with if you're interested.
  - Integration Test Example on JS Fiddle: [Integration Testing Domain Validator (with Jasmine)](https://jsfiddle.net/acowan/jynd54h0/).
- ***Testing In General***
  - Tutorial from ThoughtWorks on Test Suite Composition: [The Practical Test Pyramid. Note](https://martinfowler.com/articles/practical-test-pyramid.html): A look into the testing pyramid.
  - Post from Simon Stewart at Google on Test Type Definitions: [Test Sizes](https://testing.googleblog.com/2010/12/test-sizes.html). This is the source of the test sizes (small (aka unit), medium (aka integration), large (aka system)) kind of referenced in the previous link
  - Post from Alan Page of Angry Weasel on Integrated/Test-First vs. Silo'ed/Test-Last Schools: [Two new…schools?](https://angryweasel.com/blog/two-new-schools/).
  - Parable from Alberto Savoia on Test Coverage: [What is a reasonable code coverage % for unit tests (and why)](https://stackoverflow.com/questions/90002/what-is-a-reasonable-code-coverage-for-unit-tests-and-why)?
  - Wikipedia Page on Technical Debt: [Technical Debt](https://en.wikipedia.org/wiki/Technical_debt)
- ***Test-Driven Development***
  - Post by David Heinemeier Hansson on what he calls 'test-first fundamentalism': [TDD is dead. Long live testing](https://dhh.dk/2014/tdd-is-dead-long-live-testing.html). While many developers benefit from test-driven development (TDD) and advocate its practice, this is perspective you might find interesting, particularly regarding things your team may be grappling with as they consider and refine their practice of TDD.
  - Discussions between Kent Beck, David Heinemeier Hansson, and Martin Fowler on TDD: [Is TDD Dead?](https://martinfowler.com/articles/is-tdd-dead/).

## Doing the Jobs of Ops
- Interview with Ben Treynor, VP of Engineering at Google on the SRE Concept: [What is ‘Site Reliability Engineering’](https://landing.google.com/sre/interview/ben-treynor-sloss/)?
- Short Form Piece on Infrastructure as Code by Martin Fowler: [InfrastructureAsCode](https://www.martinfowler.com/bliki/InfrastructureAsCode.html)
- Krishelle Hardson-Hurley on Pivoting to an SRE Role: [So you want to be an SRE](https://hackernoon.com/so-you-want-to-be-an-sre-34e832357a8c)?
- Asaf Yigal on SRE vs. DevOps: [SRE vs. DevOps — a False Distinction](https://devops.com/sre-vs-devops-false-distinction/#disqus_thread)?
- Aymen El Amri on DevOps-Related Foundation Skills: [The Must Know Checklist For DevOps & Site Reliability Engineers](https://medium.com/faun/the-must-know-checklist-for-devops-system-reliability-engineers-f74c1cbf259d). I'm not sure every ops-employed person would 100% agree with this list. As the author says, 'This list is opinionated.'. However, I think at a minimum it's a good starter list to get a sense of what types of skills individuals in these roles tend to need.

## Continuous Delivery
- Video Overview of Continuous Integration from a Developer Perspective (Mattias Petter Johansson ): [Continuous Integration - What's the point?](https://www.youtube.com/watch?v=ymPOI4gWQFY) - [Continuous Integration P1 && Getting started with CircleCI](https://www.youtube.com/watch?v=7VxBn_ZgOek) - [Continuous Integration P2 && Running CircleCI on Pull Request - Continuous Integration P3](https://www.youtube.com/watch?v=iPKfeTWBGvU)
- Continuous Delivery Book by Jez Humble: Continuous Delivery: [Reliable Software Releases through Build, Test, and Deployment Automation](https://www.amazon.com/Continuous-Delivery-Deployment-Automation-Addison-Wesley-ebook-dp-B003YMNVC0/dp/B003YMNVC0/)

## Agile in General
- Online Specialization on Coursera: [Agile Development](https://www.coursera.org/specializations/agile-development)
- Tutorial on about agile on Alex's Site: [Agile - Just the Basics](https://www.alexandercowan.com/agile-just-basics/). This page covers…the basics. It's a good place to start if you want to understand the general nature of a topic and how it relates to the practice of agile.
- Tutorial on about Using User Stories on Alex's Site: [Your Best Agile User Story](https://www.alexandercowan.com/best-agile-user-story/). This page covers the user story- how to prepare to write them, how to use them, and how to link them to implementation and testing.
- ***Bringing Design to Agile***
  - Tutorial on Alex's Site: [Venture Design](https://www.alexandercowan.com/venture-design/). This page provides a comprehensive set of resources. What I would do for a general overview is just read the intro to each of the areas (Personas, Problem Scenarios, etc.).
  - Tutorial on Alex's Site: [Venture Design Sprints](https://www.alexandercowan.com/venture-design-sprints/). This page provides an overview of design sprints and four different focal types for those sprints: Problems, Motivation, Usability, and Architecture.
- ***Bringing Lean Startup to Agile***
  - Tutorial on Alex's Site: [Your Lean Startup](https://www.alexandercowan.com/creating-a-lean-startup-style-assumption-set/). This tutorial will allow you to review the fundamentals and a few case studies. It also links to the applicable Venture Design templates.

## Youtube Channels
- Playlist in Google Cloud Platform youtube channel [class SRE implements DevOps](https://www.youtube.com/watch?v=uTEL8Ff1Zvk&list=PLIivdWyY5sqJrKl7D2u-gmis8h9K66qoj)

## Roadmap
- [DevOps Roadmap](https://roadmap.sh/devops)

## MISC

# References

