import 'package:nereus_api_client/src/model/change_password.dart';
import 'package:nereus_api_client/src/model/change_password_request.dart';
import 'package:nereus_api_client/src/model/client.dart';
import 'package:nereus_api_client/src/model/client_card_create.dart';
import 'package:nereus_api_client/src/model/client_card_create_request.dart';
import 'package:nereus_api_client/src/model/client_card_detail.dart';
import 'package:nereus_api_client/src/model/client_card_list.dart';
import 'package:nereus_api_client/src/model/client_card_list_request.dart';
import 'package:nereus_api_client/src/model/client_card_template.dart';
import 'package:nereus_api_client/src/model/client_card_template_request.dart';
import 'package:nereus_api_client/src/model/client_contact.dart';
import 'package:nereus_api_client/src/model/client_contact_list.dart';
import 'package:nereus_api_client/src/model/client_contact_request.dart';
import 'package:nereus_api_client/src/model/client_depth.dart';
import 'package:nereus_api_client/src/model/client_depth_request.dart';
import 'package:nereus_api_client/src/model/client_extra_field_definition.dart';
import 'package:nereus_api_client/src/model/client_extra_field_definition_request.dart';
import 'package:nereus_api_client/src/model/client_extra_field_group.dart';
import 'package:nereus_api_client/src/model/client_extra_field_group_request.dart';
import 'package:nereus_api_client/src/model/client_extra_field_value.dart';
import 'package:nereus_api_client/src/model/client_extra_field_value_create.dart';
import 'package:nereus_api_client/src/model/client_extra_field_value_create_request.dart';
import 'package:nereus_api_client/src/model/client_request.dart';
import 'package:nereus_api_client/src/model/compliance_config.dart';
import 'package:nereus_api_client/src/model/customer_department.dart';
import 'package:nereus_api_client/src/model/customer_department_list.dart';
import 'package:nereus_api_client/src/model/customer_department_request.dart';
import 'package:nereus_api_client/src/model/device_config.dart';
import 'package:nereus_api_client/src/model/emh.dart';
import 'package:nereus_api_client/src/model/emh_list.dart';
import 'package:nereus_api_client/src/model/emh_request.dart';
import 'package:nereus_api_client/src/model/forgot_password.dart';
import 'package:nereus_api_client/src/model/forgot_password_request.dart';
import 'package:nereus_api_client/src/model/generate_card_request.dart';
import 'package:nereus_api_client/src/model/iot_telemetry_readings_latest_batch_create_request.dart';
import 'package:nereus_api_client/src/model/job_title.dart';
import 'package:nereus_api_client/src/model/job_title_list.dart';
import 'package:nereus_api_client/src/model/job_title_request.dart';
import 'package:nereus_api_client/src/model/paginated_client_card_list_list.dart';
import 'package:nereus_api_client/src/model/paginated_client_card_template_list.dart';
import 'package:nereus_api_client/src/model/paginated_client_contact_list_list.dart';
import 'package:nereus_api_client/src/model/paginated_client_depth_list.dart';
import 'package:nereus_api_client/src/model/paginated_client_extra_field_definition_list.dart';
import 'package:nereus_api_client/src/model/paginated_client_extra_field_group_list.dart';
import 'package:nereus_api_client/src/model/paginated_client_extra_field_value_list.dart';
import 'package:nereus_api_client/src/model/paginated_customer_department_list_list.dart';
import 'package:nereus_api_client/src/model/paginated_emh_list_list.dart';
import 'package:nereus_api_client/src/model/paginated_job_title_list_list.dart';
import 'package:nereus_api_client/src/model/paginated_sla_policy_list.dart';
import 'package:nereus_api_client/src/model/paginated_support_agent_list.dart';
import 'package:nereus_api_client/src/model/paginated_telemetry_alert_channel_list.dart';
import 'package:nereus_api_client/src/model/paginated_telemetry_alert_rule_list_list.dart';
import 'package:nereus_api_client/src/model/paginated_telemetry_alert_trigger_list.dart';
import 'package:nereus_api_client/src/model/paginated_telemetry_device_list_list.dart';
import 'package:nereus_api_client/src/model/paginated_telemetry_event_list_list.dart';
import 'package:nereus_api_client/src/model/paginated_telemetry_project_list.dart';
import 'package:nereus_api_client/src/model/paginated_telemetry_reading_list.dart';
import 'package:nereus_api_client/src/model/paginated_telemetry_variable_list.dart';
import 'package:nereus_api_client/src/model/paginated_ticket_attachment_list.dart';
import 'package:nereus_api_client/src/model/paginated_ticket_category_list.dart';
import 'package:nereus_api_client/src/model/paginated_ticket_comment_list.dart';
import 'package:nereus_api_client/src/model/paginated_ticket_escalation_list.dart';
import 'package:nereus_api_client/src/model/paginated_ticket_list_list.dart';
import 'package:nereus_api_client/src/model/paginated_ticket_timer_list.dart';
import 'package:nereus_api_client/src/model/paginated_ticket_type_list.dart';
import 'package:nereus_api_client/src/model/paginated_user_extra_field_definition_list.dart';
import 'package:nereus_api_client/src/model/paginated_user_extra_field_value_list.dart';
import 'package:nereus_api_client/src/model/paginated_user_response_list.dart';
import 'package:nereus_api_client/src/model/paginated_work_order_attachment_list.dart';
import 'package:nereus_api_client/src/model/paginated_work_order_checklist_item_list.dart';
import 'package:nereus_api_client/src/model/paginated_work_order_feedback_list.dart';
import 'package:nereus_api_client/src/model/paginated_work_order_list_list.dart';
import 'package:nereus_api_client/src/model/patched_client_card_create_request.dart';
import 'package:nereus_api_client/src/model/patched_client_card_template_request.dart';
import 'package:nereus_api_client/src/model/patched_client_contact_request.dart';
import 'package:nereus_api_client/src/model/patched_client_extra_field_definition_request.dart';
import 'package:nereus_api_client/src/model/patched_client_extra_field_group_request.dart';
import 'package:nereus_api_client/src/model/patched_client_extra_field_value_create_request.dart';
import 'package:nereus_api_client/src/model/patched_client_request.dart';
import 'package:nereus_api_client/src/model/patched_customer_department_request.dart';
import 'package:nereus_api_client/src/model/patched_emh_request.dart';
import 'package:nereus_api_client/src/model/patched_job_title_request.dart';
import 'package:nereus_api_client/src/model/patched_sla_policy_request.dart';
import 'package:nereus_api_client/src/model/patched_support_agent_request.dart';
import 'package:nereus_api_client/src/model/patched_telemetry_alert_channel_request.dart';
import 'package:nereus_api_client/src/model/patched_telemetry_alert_rule_request.dart';
import 'package:nereus_api_client/src/model/patched_telemetry_alert_trigger_request.dart';
import 'package:nereus_api_client/src/model/patched_telemetry_device_request.dart';
import 'package:nereus_api_client/src/model/patched_telemetry_event_request.dart';
import 'package:nereus_api_client/src/model/patched_telemetry_project_request.dart';
import 'package:nereus_api_client/src/model/patched_telemetry_reading_request.dart';
import 'package:nereus_api_client/src/model/patched_telemetry_variable_request.dart';
import 'package:nereus_api_client/src/model/patched_ticket_attachment_request.dart';
import 'package:nereus_api_client/src/model/patched_ticket_category_request.dart';
import 'package:nereus_api_client/src/model/patched_ticket_comment_request.dart';
import 'package:nereus_api_client/src/model/patched_ticket_create_update_request.dart';
import 'package:nereus_api_client/src/model/patched_ticket_escalation_request.dart';
import 'package:nereus_api_client/src/model/patched_ticket_timer_request.dart';
import 'package:nereus_api_client/src/model/patched_ticket_type_request.dart';
import 'package:nereus_api_client/src/model/patched_user_extra_field_definition_request.dart';
import 'package:nereus_api_client/src/model/patched_user_extra_field_value_write_request.dart';
import 'package:nereus_api_client/src/model/patched_user_model_request.dart';
import 'package:nereus_api_client/src/model/patched_user_profile_request.dart';
import 'package:nereus_api_client/src/model/patched_work_order_attachment_request.dart';
import 'package:nereus_api_client/src/model/patched_work_order_checklist_item_request.dart';
import 'package:nereus_api_client/src/model/patched_work_order_create_update_request.dart';
import 'package:nereus_api_client/src/model/patched_work_order_feedback_request.dart';
import 'package:nereus_api_client/src/model/public_customer_sign_up.dart';
import 'package:nereus_api_client/src/model/public_customer_sign_up_request.dart';
import 'package:nereus_api_client/src/model/reset_password.dart';
import 'package:nereus_api_client/src/model/reset_password_confirm.dart';
import 'package:nereus_api_client/src/model/reset_password_confirm_request.dart';
import 'package:nereus_api_client/src/model/reset_password_request.dart';
import 'package:nereus_api_client/src/model/sla_policy.dart';
import 'package:nereus_api_client/src/model/sla_policy_request.dart';
import 'package:nereus_api_client/src/model/support_agent.dart';
import 'package:nereus_api_client/src/model/support_agent_request.dart';
import 'package:nereus_api_client/src/model/telemetry_alert_channel.dart';
import 'package:nereus_api_client/src/model/telemetry_alert_channel_request.dart';
import 'package:nereus_api_client/src/model/telemetry_alert_rule.dart';
import 'package:nereus_api_client/src/model/telemetry_alert_rule_list.dart';
import 'package:nereus_api_client/src/model/telemetry_alert_rule_request.dart';
import 'package:nereus_api_client/src/model/telemetry_alert_trigger.dart';
import 'package:nereus_api_client/src/model/telemetry_alert_trigger_request.dart';
import 'package:nereus_api_client/src/model/telemetry_device.dart';
import 'package:nereus_api_client/src/model/telemetry_device_detail.dart';
import 'package:nereus_api_client/src/model/telemetry_device_list.dart';
import 'package:nereus_api_client/src/model/telemetry_device_request.dart';
import 'package:nereus_api_client/src/model/telemetry_event.dart';
import 'package:nereus_api_client/src/model/telemetry_event_list.dart';
import 'package:nereus_api_client/src/model/telemetry_event_request.dart';
import 'package:nereus_api_client/src/model/telemetry_project.dart';
import 'package:nereus_api_client/src/model/telemetry_project_request.dart';
import 'package:nereus_api_client/src/model/telemetry_reading.dart';
import 'package:nereus_api_client/src/model/telemetry_reading_request.dart';
import 'package:nereus_api_client/src/model/telemetry_variable.dart';
import 'package:nereus_api_client/src/model/telemetry_variable_request.dart';
import 'package:nereus_api_client/src/model/ticket_attachment.dart';
import 'package:nereus_api_client/src/model/ticket_attachment_request.dart';
import 'package:nereus_api_client/src/model/ticket_category.dart';
import 'package:nereus_api_client/src/model/ticket_category_request.dart';
import 'package:nereus_api_client/src/model/ticket_comment.dart';
import 'package:nereus_api_client/src/model/ticket_comment_request.dart';
import 'package:nereus_api_client/src/model/ticket_create_update.dart';
import 'package:nereus_api_client/src/model/ticket_create_update_request.dart';
import 'package:nereus_api_client/src/model/ticket_detail.dart';
import 'package:nereus_api_client/src/model/ticket_escalation.dart';
import 'package:nereus_api_client/src/model/ticket_escalation_request.dart';
import 'package:nereus_api_client/src/model/ticket_list.dart';
import 'package:nereus_api_client/src/model/ticket_list_request.dart';
import 'package:nereus_api_client/src/model/ticket_submit_error.dart';
import 'package:nereus_api_client/src/model/ticket_submit_request.dart';
import 'package:nereus_api_client/src/model/ticket_timer.dart';
import 'package:nereus_api_client/src/model/ticket_timer_request.dart';
import 'package:nereus_api_client/src/model/ticket_type.dart';
import 'package:nereus_api_client/src/model/ticket_type_request.dart';
import 'package:nereus_api_client/src/model/user_assignment.dart';
import 'package:nereus_api_client/src/model/user_assignment_request.dart';
import 'package:nereus_api_client/src/model/user_extra_field_definition.dart';
import 'package:nereus_api_client/src/model/user_extra_field_definition_request.dart';
import 'package:nereus_api_client/src/model/user_extra_field_value.dart';
import 'package:nereus_api_client/src/model/user_extra_field_value_write.dart';
import 'package:nereus_api_client/src/model/user_extra_field_value_write_request.dart';
import 'package:nereus_api_client/src/model/user_model.dart';
import 'package:nereus_api_client/src/model/user_model_request.dart';
import 'package:nereus_api_client/src/model/user_profile.dart';
import 'package:nereus_api_client/src/model/user_response.dart';
import 'package:nereus_api_client/src/model/user_sign_up.dart';
import 'package:nereus_api_client/src/model/user_sign_up_request.dart';
import 'package:nereus_api_client/src/model/work_order_attachment.dart';
import 'package:nereus_api_client/src/model/work_order_attachment_request.dart';
import 'package:nereus_api_client/src/model/work_order_checklist_item.dart';
import 'package:nereus_api_client/src/model/work_order_checklist_item_request.dart';
import 'package:nereus_api_client/src/model/work_order_create_update.dart';
import 'package:nereus_api_client/src/model/work_order_create_update_request.dart';
import 'package:nereus_api_client/src/model/work_order_detail.dart';
import 'package:nereus_api_client/src/model/work_order_feedback.dart';
import 'package:nereus_api_client/src/model/work_order_feedback_request.dart';
import 'package:nereus_api_client/src/model/work_order_list.dart';
import 'package:nereus_api_client/src/model/work_order_list_request.dart';

final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

  ReturnType deserialize<ReturnType, BaseType>(dynamic value, String targetType, {bool growable= true}) {
      switch (targetType) {
        case 'String':
          return '$value' as ReturnType;
        case 'int':
          return (value is int ? value : int.parse('$value')) as ReturnType;
        case 'bool':
          if (value is bool) {
            return value as ReturnType;
          }
          final valueString = '$value'.toLowerCase();
          return (valueString == 'true' || valueString == '1') as ReturnType;
        case 'double':
          return (value is double ? value : double.parse('$value')) as ReturnType;
        case 'ChangePassword':
          return ChangePassword.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ChangePasswordRequest':
          return ChangePasswordRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Client':
          return Client.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ClientCardCreate':
          return ClientCardCreate.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ClientCardCreateRequest':
          return ClientCardCreateRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ClientCardDetail':
          return ClientCardDetail.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ClientCardList':
          return ClientCardList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ClientCardListRequest':
          return ClientCardListRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ClientCardTemplate':
          return ClientCardTemplate.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ClientCardTemplateRequest':
          return ClientCardTemplateRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ClientContact':
          return ClientContact.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ClientContactList':
          return ClientContactList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ClientContactRequest':
          return ClientContactRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ClientDepth':
          return ClientDepth.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ClientDepthRequest':
          return ClientDepthRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ClientExtraFieldDefinition':
          return ClientExtraFieldDefinition.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ClientExtraFieldDefinitionRequest':
          return ClientExtraFieldDefinitionRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ClientExtraFieldGroup':
          return ClientExtraFieldGroup.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ClientExtraFieldGroupRequest':
          return ClientExtraFieldGroupRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ClientExtraFieldValue':
          return ClientExtraFieldValue.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ClientExtraFieldValueCreate':
          return ClientExtraFieldValueCreate.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ClientExtraFieldValueCreateRequest':
          return ClientExtraFieldValueCreateRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ClientRequest':
          return ClientRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ComplianceConfig':
          return ComplianceConfig.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CustomerDepartment':
          return CustomerDepartment.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CustomerDepartmentList':
          return CustomerDepartmentList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CustomerDepartmentRequest':
          return CustomerDepartmentRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DeviceConfig':
          return DeviceConfig.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'EMH':
          return EMH.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'EMHList':
          return EMHList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'EMHRequest':
          return EMHRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ForgotPassword':
          return ForgotPassword.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ForgotPasswordRequest':
          return ForgotPasswordRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GenerateCardRequest':
          return GenerateCardRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'IotTelemetryReadingsLatestBatchCreateRequest':
          return IotTelemetryReadingsLatestBatchCreateRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'JobTitle':
          return JobTitle.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'JobTitleList':
          return JobTitleList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'JobTitleRequest':
          return JobTitleRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedClientCardListList':
          return PaginatedClientCardListList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedClientCardTemplateList':
          return PaginatedClientCardTemplateList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedClientContactListList':
          return PaginatedClientContactListList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedClientDepthList':
          return PaginatedClientDepthList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedClientExtraFieldDefinitionList':
          return PaginatedClientExtraFieldDefinitionList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedClientExtraFieldGroupList':
          return PaginatedClientExtraFieldGroupList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedClientExtraFieldValueList':
          return PaginatedClientExtraFieldValueList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedCustomerDepartmentListList':
          return PaginatedCustomerDepartmentListList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedEMHListList':
          return PaginatedEMHListList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedJobTitleListList':
          return PaginatedJobTitleListList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedSLAPolicyList':
          return PaginatedSLAPolicyList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedSupportAgentList':
          return PaginatedSupportAgentList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedTelemetryAlertChannelList':
          return PaginatedTelemetryAlertChannelList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedTelemetryAlertRuleListList':
          return PaginatedTelemetryAlertRuleListList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedTelemetryAlertTriggerList':
          return PaginatedTelemetryAlertTriggerList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedTelemetryDeviceListList':
          return PaginatedTelemetryDeviceListList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedTelemetryEventListList':
          return PaginatedTelemetryEventListList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedTelemetryProjectList':
          return PaginatedTelemetryProjectList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedTelemetryReadingList':
          return PaginatedTelemetryReadingList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedTelemetryVariableList':
          return PaginatedTelemetryVariableList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedTicketAttachmentList':
          return PaginatedTicketAttachmentList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedTicketCategoryList':
          return PaginatedTicketCategoryList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedTicketCommentList':
          return PaginatedTicketCommentList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedTicketEscalationList':
          return PaginatedTicketEscalationList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedTicketListList':
          return PaginatedTicketListList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedTicketTimerList':
          return PaginatedTicketTimerList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedTicketTypeList':
          return PaginatedTicketTypeList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedUserExtraFieldDefinitionList':
          return PaginatedUserExtraFieldDefinitionList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedUserExtraFieldValueList':
          return PaginatedUserExtraFieldValueList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedUserResponseList':
          return PaginatedUserResponseList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedWorkOrderAttachmentList':
          return PaginatedWorkOrderAttachmentList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedWorkOrderChecklistItemList':
          return PaginatedWorkOrderChecklistItemList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedWorkOrderFeedbackList':
          return PaginatedWorkOrderFeedbackList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaginatedWorkOrderListList':
          return PaginatedWorkOrderListList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedClientCardCreateRequest':
          return PatchedClientCardCreateRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedClientCardTemplateRequest':
          return PatchedClientCardTemplateRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedClientContactRequest':
          return PatchedClientContactRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedClientExtraFieldDefinitionRequest':
          return PatchedClientExtraFieldDefinitionRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedClientExtraFieldGroupRequest':
          return PatchedClientExtraFieldGroupRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedClientExtraFieldValueCreateRequest':
          return PatchedClientExtraFieldValueCreateRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedClientRequest':
          return PatchedClientRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedCustomerDepartmentRequest':
          return PatchedCustomerDepartmentRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedEMHRequest':
          return PatchedEMHRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedJobTitleRequest':
          return PatchedJobTitleRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedSLAPolicyRequest':
          return PatchedSLAPolicyRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedSupportAgentRequest':
          return PatchedSupportAgentRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedTelemetryAlertChannelRequest':
          return PatchedTelemetryAlertChannelRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedTelemetryAlertRuleRequest':
          return PatchedTelemetryAlertRuleRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedTelemetryAlertTriggerRequest':
          return PatchedTelemetryAlertTriggerRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedTelemetryDeviceRequest':
          return PatchedTelemetryDeviceRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedTelemetryEventRequest':
          return PatchedTelemetryEventRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedTelemetryProjectRequest':
          return PatchedTelemetryProjectRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedTelemetryReadingRequest':
          return PatchedTelemetryReadingRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedTelemetryVariableRequest':
          return PatchedTelemetryVariableRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedTicketAttachmentRequest':
          return PatchedTicketAttachmentRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedTicketCategoryRequest':
          return PatchedTicketCategoryRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedTicketCommentRequest':
          return PatchedTicketCommentRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedTicketCreateUpdateRequest':
          return PatchedTicketCreateUpdateRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedTicketEscalationRequest':
          return PatchedTicketEscalationRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedTicketTimerRequest':
          return PatchedTicketTimerRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedTicketTypeRequest':
          return PatchedTicketTypeRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedUserExtraFieldDefinitionRequest':
          return PatchedUserExtraFieldDefinitionRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedUserExtraFieldValueWriteRequest':
          return PatchedUserExtraFieldValueWriteRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedUserModelRequest':
          return PatchedUserModelRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedUserProfileRequest':
          return PatchedUserProfileRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedWorkOrderAttachmentRequest':
          return PatchedWorkOrderAttachmentRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedWorkOrderChecklistItemRequest':
          return PatchedWorkOrderChecklistItemRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedWorkOrderCreateUpdateRequest':
          return PatchedWorkOrderCreateUpdateRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchedWorkOrderFeedbackRequest':
          return PatchedWorkOrderFeedbackRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PublicCustomerSignUp':
          return PublicCustomerSignUp.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PublicCustomerSignUpRequest':
          return PublicCustomerSignUpRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ResetPassword':
          return ResetPassword.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ResetPasswordConfirm':
          return ResetPasswordConfirm.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ResetPasswordConfirmRequest':
          return ResetPasswordConfirmRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ResetPasswordRequest':
          return ResetPasswordRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SLAPolicy':
          return SLAPolicy.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SLAPolicyRequest':
          return SLAPolicyRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SupportAgent':
          return SupportAgent.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SupportAgentRequest':
          return SupportAgentRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TelemetryAlertChannel':
          return TelemetryAlertChannel.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TelemetryAlertChannelRequest':
          return TelemetryAlertChannelRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TelemetryAlertRule':
          return TelemetryAlertRule.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TelemetryAlertRuleList':
          return TelemetryAlertRuleList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TelemetryAlertRuleRequest':
          return TelemetryAlertRuleRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TelemetryAlertTrigger':
          return TelemetryAlertTrigger.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TelemetryAlertTriggerRequest':
          return TelemetryAlertTriggerRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TelemetryDevice':
          return TelemetryDevice.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TelemetryDeviceDetail':
          return TelemetryDeviceDetail.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TelemetryDeviceList':
          return TelemetryDeviceList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TelemetryDeviceRequest':
          return TelemetryDeviceRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TelemetryEvent':
          return TelemetryEvent.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TelemetryEventList':
          return TelemetryEventList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TelemetryEventRequest':
          return TelemetryEventRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TelemetryProject':
          return TelemetryProject.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TelemetryProjectRequest':
          return TelemetryProjectRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TelemetryReading':
          return TelemetryReading.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TelemetryReadingRequest':
          return TelemetryReadingRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TelemetryVariable':
          return TelemetryVariable.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TelemetryVariableRequest':
          return TelemetryVariableRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TicketAttachment':
          return TicketAttachment.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TicketAttachmentRequest':
          return TicketAttachmentRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TicketCategory':
          return TicketCategory.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TicketCategoryRequest':
          return TicketCategoryRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TicketComment':
          return TicketComment.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TicketCommentRequest':
          return TicketCommentRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TicketCreateUpdate':
          return TicketCreateUpdate.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TicketCreateUpdateRequest':
          return TicketCreateUpdateRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TicketDetail':
          return TicketDetail.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TicketEscalation':
          return TicketEscalation.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TicketEscalationRequest':
          return TicketEscalationRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TicketList':
          return TicketList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TicketListRequest':
          return TicketListRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TicketSubmitError':
          return TicketSubmitError.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TicketSubmitRequest':
          return TicketSubmitRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TicketTimer':
          return TicketTimer.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TicketTimerRequest':
          return TicketTimerRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TicketType':
          return TicketType.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TicketTypeRequest':
          return TicketTypeRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserAssignment':
          return UserAssignment.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserAssignmentRequest':
          return UserAssignmentRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserExtraFieldDefinition':
          return UserExtraFieldDefinition.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserExtraFieldDefinitionRequest':
          return UserExtraFieldDefinitionRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserExtraFieldValue':
          return UserExtraFieldValue.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserExtraFieldValueWrite':
          return UserExtraFieldValueWrite.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserExtraFieldValueWriteRequest':
          return UserExtraFieldValueWriteRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserModel':
          return UserModel.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserModelRequest':
          return UserModelRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserProfile':
          return UserProfile.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserResponse':
          return UserResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserSignUp':
          return UserSignUp.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserSignUpRequest':
          return UserSignUpRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WorkOrderAttachment':
          return WorkOrderAttachment.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WorkOrderAttachmentRequest':
          return WorkOrderAttachmentRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WorkOrderChecklistItem':
          return WorkOrderChecklistItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WorkOrderChecklistItemRequest':
          return WorkOrderChecklistItemRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WorkOrderCreateUpdate':
          return WorkOrderCreateUpdate.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WorkOrderCreateUpdateRequest':
          return WorkOrderCreateUpdateRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WorkOrderDetail':
          return WorkOrderDetail.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WorkOrderFeedback':
          return WorkOrderFeedback.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WorkOrderFeedbackRequest':
          return WorkOrderFeedbackRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WorkOrderList':
          return WorkOrderList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WorkOrderListRequest':
          return WorkOrderListRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        default:
          RegExpMatch? match;

          if (value is List && (match = _regList.firstMatch(targetType)) != null) {
            targetType = match![1]!; // ignore: parameter_assignments
            return value
              .map<BaseType>((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable))
              .toList(growable: growable) as ReturnType;
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)) != null) {
            targetType = match![1]!; // ignore: parameter_assignments
            return value
              .map<BaseType>((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable))
              .toSet() as ReturnType;
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)) != null) {
            targetType = match![1]!.trim(); // ignore: parameter_assignments
            return Map<String, BaseType>.fromIterables(
              value.keys as Iterable<String>,
              value.values.map((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable)),
            ) as ReturnType;
          }
          break;
    }
    throw Exception('Cannot deserialize');
  }