import boto3

# Create an EC2 client
ec2 = boto3.client('ec2')

# Get list of instances
instances = ec2.describe_instances()

for reservation in instances['Reservations']:
    for instance in reservation['Instances']:
        # Extract instance ID and state
        instance_id = instance['InstanceId']
        state = instance['State']['Name']
        
        # Print instance ID and state
        print("Instance ID:", instance_id)
        print("State:", state)
        
        # If the instance is running, stop it
        if state == 'running':
            print("Stopping instance...")
            ec2.stop_instances(InstanceIds=[instance_id])
            print("Instance stopped")
        
        print()