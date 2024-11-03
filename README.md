# Pushing Your First Smart Contract to GitHub from Remix IDE (GUI)

This guide explains how a beginner pushed their first smart contract to GitHub from the `MyFirstSmartContract` workspace in Remix IDE, using a token for GitHub authentication and the Git tab in Remix.

## Prerequisites
Before you begin, ensure you have:
- A [GitHub](https://github.com/) account.
- [Remix IDE](https://remix.ethereum.org/) (Web-based).
- A **Personal Access Token** from GitHub (explained in Step 3).

## Step 1: Create a New Workspace in Remix IDE

1. Open [Remix IDE](https://remix.ethereum.org/).
2. In the **File Explorer** (on the left-hand side), click the drop-down arrow next to **File Explorer**.
3. Select **Create New Workspace**, name it `MyFirstSmartContract`, and click **OK**.

## Step 2: Write Your Smart Contract

1. Inside your new workspace, click the **New File** button and name the file `SimpleStorage.sol`.
2. Add your smart contract code to `SimpleStorage.sol`.
3. Compile the contract by clicking the **Solidity Compiler** tab on the left, then click the **Compile** button.

## Step 3: Generate a Personal Access Token on GitHub

1. Log in to your GitHub account.
2. Click on your profile icon in the top-right corner and select **Settings**.
3. On the left sidebar, navigate to **Developer settings** > **Personal access tokens** > **Tokens (classic)**.
4. Click **Generate new token**.
5. Set the token's permissions. At a minimum, enable **repo** access for full control of repositories.
6. Generate the token and copy it. **Save this token securely**, as it will only be shown once.

## Step 4: Connect Your GitHub Account in Remix

1. In Remix IDE, click the **Settings** tab (gear icon) on the left-hand side.
2. Scroll down to the **GitHub Access Token** section.
3. Paste the **Personal Access Token** generated from GitHub and click **Save**.
4. Your GitHub account is now connected to Remix.

## Step 5: Set Up a GitHub Repository

1. Create a new repository on GitHub:
    - Click the **+** button in the top-right corner and select **New repository**.
    - Name your repository (e.g., `first-smart-contract`), and choose whether to make it public or private.
    - Click **Create repository**.

## Step 6: Push Your Smart Contract to GitHub Using the Git Tab

1. In Remix IDE, open the **Git** tab on the right-hand side of the IDE.
2. In the Git settings, enter the URL of your GitHub repository (e.g., `https://github.com/your-username/first-smart-contract.git`).
3. Stage the `SimpleStorage.sol` file by selecting it under the **Files** section.
4. Write a descriptive commit message, such as `"Add SimpleStorage smart contract"`, and click **Commit**.
5. Once committed, click the **Push** button to upload the changes to GitHub.

## Step 7: Verify Your Smart Contract on GitHub

1. Visit your GitHub repository page.
2. You should see the `SimpleStorage.sol` file along with the commit message.

### Modifications
Implemented `arrays`, `structs`, and `enum` data structres.
### Mapping
- Learnt how to use `mapping` keyword to estabhlish a relattionship between a key and value pair.
### Events and Logging
- Implemented an `event` which is a way for a smart contract to communicate that something important occured.
- SYNTAX: `event EventName(parameters) visibility { // code block }`.
### Storage locations
- `storage`: location for state variables to be stored permanently.
- `calldata`: immutable temporary storage location.
- `memory`: mutable temporary location.

## Conclusion

You have successfully written a smart contract in Remix IDE, connected your GitHub account using a Personal Access Token, and pushed the contract to your GitHub repository using the Git tab in Remix.

### Additional Resources
- [Remix IDE Documentation](https://remix-ide.readthedocs.io/en/latest/)
- [GitHub Documentation](https://docs.github.com/)
- [Solidity Documentation](https://docs.soliditylang.org/en/v0.8.0/)
