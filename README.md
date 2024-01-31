# Ushirika

Ushirika is a Ruby on Rails application designed to streamline the collection of weekly attendance data for different fellowships (shirika). The system allows you to capture relevant information such as the fellowship name, day of meeting, coordinator/leader, host, minister, number of attendees, and comments. Additionally, Ushirika provides a dashboard for visualizing the collected data through various charts.

## Table of Contents

- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
  - [Data Collection](#data-collection)
  - [Dashboard](#dashboard)
- [Configuration](#configuration)
- [Testing](#testing)
- [Contributing](#contributing)
- [License](#license)

## Getting Started

### Prerequisites

Before you begin, ensure you have the following installed on your system:

- Ruby
- Rails
- PostgreSQL
- Node.js (for Tailwind CSS)
- Yarn (for Tailwind CSS)

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/devcamke/ushirika.git
   cd ushirika
   ```

2. Install dependencies:

   ```bash
   bundle install
   yarn install
   ```

3. Configure the database:

   ```bash
   rails db:create
   rails db:migrate
   ```

4. Start the Rails server:

   ```bash
   rails server
   ```

   Visit `http://localhost:3000` in your browser to see the Ushirika application.

## Usage

### Data Collection

1. Navigate to the Fellowships section to create and manage fellowship records.
2. Fill in the required information, including the day of the week as an enum.
3. Submit the form to collect attendance data.

### Dashboard

1. Visit the Dashboard to visualize attendance data through charts.
2. Explore the various charts to gain insights into fellowship attendance trends.

## Configuration

- **Database Configuration:** Update the `config/database.yml` file to set up the PostgreSQL database configuration.
- **Tailwind CSS Configuration:** Tailwind CSS is configured in the `postcss.config.js` file. Customize it as needed.

## Testing

Ushirika uses RSpec for testing. Run the tests with:

```bash
rspec
```

## Contributing

If you would like to contribute to Ushirika, please follow our [contributing guidelines](CONTRIBUTING.md).

## License

This project is licensed under the [MIT License](LICENSE).

---

Feel free to customize this template to better suit your project's specifics. Include additional sections if necessary, and make sure to keep the information up-to-date.
