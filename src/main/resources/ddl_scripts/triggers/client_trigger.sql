CREATE OR REPLACE FUNCTION log_client_changes()
RETURNS TRIGGER AS $$
DECLARE
    operation_details TEXT;
BEGIN
    IF (TG_OP = 'INSERT') THEN
        operation_details := row_to_json(NEW);
    ELSIF (TG_OP = 'UPDATE') THEN
        operation_details := 'Changed from: ' || row_to_json(OLD) || ' To: ' || row_to_json(NEW);
    ELSIF (TG_OP = 'DELETE') THEN
        operation_details := row_to_json(OLD);
    END IF;

    INSERT INTO Logs(table_name, time, operation, values)
    VALUES (TG_TABLE_NAME, current_timestamp, TG_OP, operation_details);

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER client_changes_trigger
AFTER INSERT OR UPDATE OR DELETE ON Client
FOR EACH ROW
EXECUTE FUNCTION log_client_changes();