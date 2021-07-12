# SPDX-License-Identifier: Apache-2.0
# Licensed to the Ed-Fi Alliance under one or more agreements.
# The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
# See the LICENSE and NOTICES files in the project root for more information.

"""AssignmentsDim view feature tests"""

from pytest_bdd import (
    given,
    parsers,
    scenario,
    then,
    when,
)
import pandas as pd
from sqlalchemy import engine, text

from ..assertion_helpers import (
    assert_dataframe_equals_table,
    assert_dataframe_has_columns,
)
from ..data_helpers import load_school, load_school_year, load_session, load_section


@scenario("../features/assignmentdim_view.feature", "Ensure the view exists")
def test_assignment_dim_path_exists() -> None:
    pass


@scenario("../features/assignmentdim_view.feature", "Happy Path")
def test_assignment_dim_happy_path() -> None:
    pass


@scenario("../features/assignmentdim_view.feature", "Ignores discussions")
def test_assignment_dim_ingore_discussions() -> None:
    pass


@given("Analytics Middle Tier has been installed")
def given_AMT_is_installed(mssql_fixture: engine.base.Engine):
    # AMT installation is handled in the fixture setup
    pass


@given(parsers.parse("there is a school with id {school_id}"))
def given_there_is_a_school(mssql_fixture: engine.base.Engine, school_id: str) -> None:
    load_school(mssql_fixture, school_id)


@given(parsers.parse("the school year is {school_year}"))
def given_school_year(mssql_fixture: engine.base.Engine, school_year: str) -> None:
    load_school_year(mssql_fixture, school_year)


@given(
    parsers.parse(
        'school {school_id} has a session called "{session_name}" in year {school_year}'
    )
)
def given_session(
    mssql_fixture: engine.base.Engine,
    school_id: str,
    session_name: str,
    school_year: str,
) -> None:
    load_session(mssql_fixture, school_id, session_name, school_year)


@given(
    parsers.parse(
        "there is a section\n{section_table}"
    )
)
def given_section(mssql_fixture: engine.base.Engine, section_table: str) -> None:
    load_section(mssql_fixture, section_table)


@when(
    parsers.parse('I query for assignments with identifier "{identifier}"'),
    target_fixture="assignment_df",
)
def when_query_for_assignment(
    mssql_fixture: engine.base.Engine, identifier: str
) -> pd.DataFrame:

    SELECT_FROM_ASSIGNMENT = text(
        "SELECT * FROM analytics.engage_AssignmentDim WHERE AssignmentKey = '?'"
    )
    return pd.read_sql(SELECT_FROM_ASSIGNMENT, mssql_fixture, params=[identifier])


@then(parsers.parse("there should be {expected} records"))
def then_zero_records(assignment_df, expected) -> None:
    assert assignment_df.shape[0] == int(expected)


@then(parsers.parse("it has these columns:\n{table}"))
def it_has_columns(table: str, assignment_df: pd.DataFrame) -> None:
    assert_dataframe_has_columns(table, assignment_df)
