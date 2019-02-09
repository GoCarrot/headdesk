.class public Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;
.super Landroid/app/IntentService;
.source "PushClickIntentService.java"


# static fields
.field private static final BUNDLE_KEY_MESSAGE_INTENT:Ljava/lang/String; = "messageIntent"

.field private static final BUNDLE_KEY_PUSH_ANALYTICS:Ljava/lang/String; = "pushAnalytics"

.field private static final CONTENT_UNRENDERED_CONTENT_PROVIDER_KEY_NAME:Ljava/lang/String; = "name"

.field private static final CONTENT_UNRENDERED_CONTENT_PROVIDER_KEY_PARAMETERS:Ljava/lang/String; = "parameters"

.field private static final CONTENT_UNRENDERED_CONTENT_PROVIDER_PARAMETERS_KEY_CONTENT_ID:Ljava/lang/String; = "content_id"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PARAM_KEY_IS_DISPATCH_FROM_FOREGROUND:Ljava/lang/String; = "isDispatchFromForeground"

.field private static final PARAM_KEY_PUSH_CONTENT_ID:Ljava/lang/String; = "contentId"

.field private static final SERVICE_NAME:Ljava/lang/String; = "UpsightGcmPushClickIntentService"


# instance fields
.field mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "UpsightGcmPushClickIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method protected static appendMessageIntentBundle(Landroid/content/Intent;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/content/Intent;
    .locals 3
    .param p0, "messageIntent"    # Landroid/content/Intent;
    .param p1, "isDispatchFromForeground"    # Z
    .param p2, "campaignId"    # Ljava/lang/Integer;
    .param p3, "messageId"    # Ljava/lang/Integer;
    .param p4, "contentId"    # Ljava/lang/Integer;

    .prologue
    .line 155
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 156
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p2, :cond_0

    .line 157
    const-string v1, "campaign_id"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    :cond_0
    if-eqz p3, :cond_1

    .line 160
    const-string v1, "message_id"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    :cond_1
    if-eqz p4, :cond_2

    .line 163
    const-string v1, "contentId"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    :cond_2
    const-string v1, "isDispatchFromForeground"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 171
    const-string v1, "pushMessage"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    const/high16 v1, 0x34000000

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 175
    const-string v1, "session_extra"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method static newIntent(Landroid/content/Context;Landroid/content/Intent;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageIntent"    # Landroid/content/Intent;
    .param p2, "isDispatchFromForeground"    # Z
    .param p3, "campaignId"    # Ljava/lang/Integer;
    .param p4, "messageId"    # Ljava/lang/Integer;
    .param p5, "contentId"    # Ljava/lang/Integer;
    .param p6, "pushAnalytics"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "messageIntent"

    .line 56
    invoke-static {p1, p2, p3, p4, p5}, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;->appendMessageIntentBundle(Landroid/content/Intent;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pushAnalytics"

    .line 58
    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 55
    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 24
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    invoke-static/range {p0 .. p0}, Lcom/upsight/android/Upsight;->createContext(Landroid/content/Context;)Lcom/upsight/android/UpsightContext;

    move-result-object v19

    .line 68
    .local v19, "upsight":Lcom/upsight/android/UpsightContext;
    const-string v20, "com.upsight.extension.googlepushservices"

    invoke-virtual/range {v19 .. v20}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v8

    check-cast v8, Lcom/upsight/android/UpsightGooglePushServicesExtension;

    .line 69
    .local v8, "extension":Lcom/upsight/android/UpsightGooglePushServicesExtension;
    if-eqz v8, :cond_7

    .line 70
    invoke-virtual {v8}, Lcom/upsight/android/UpsightGooglePushServicesExtension;->getComponent()Lcom/upsight/android/UpsightExtension$BaseComponent;

    move-result-object v20

    check-cast v20, Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesComponent;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesComponent;->inject(Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;)V

    .line 72
    const-string v20, "messageIntent"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/content/Intent;

    .line 73
    .local v11, "messageIntent":Landroid/content/Intent;
    const-string v20, "session_extra"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 74
    .local v9, "extras":Landroid/os/Bundle;
    const-string v20, "pushAnalytics"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 77
    .local v15, "pushAnalytics":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v20

    const-class v21, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    .line 78
    invoke-interface/range {v20 .. v21}, Lcom/upsight/android/persistence/UpsightDataStore;->fetchObservable(Ljava/lang/Class;)Lrx/Observable;

    move-result-object v20

    .line 79
    invoke-virtual/range {v20 .. v20}, Lrx/Observable;->toBlocking()Lrx/observables/BlockingObservable;

    move-result-object v20

    new-instance v21, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    sget-object v22, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->BACKGROUND:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    invoke-direct/range {v21 .. v22}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;-><init>(Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;)V

    .line 80
    invoke-virtual/range {v20 .. v21}, Lrx/observables/BlockingObservable;->firstOrDefault(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    .line 81
    invoke-virtual/range {v20 .. v20}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;->getState()Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    move-result-object v17

    .line 84
    .local v17, "state":Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    move-object/from16 v16, v0

    .line 85
    .local v16, "sessionManager":Lcom/upsight/android/analytics/internal/session/SessionManager;
    sget-object v20, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->BACKGROUND:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 86
    invoke-static {v9}, Lcom/upsight/android/analytics/internal/session/PushSessionInitializer;->fromExtras(Landroid/os/Bundle;)Lcom/upsight/android/analytics/internal/session/SessionInitializer;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/upsight/android/analytics/internal/session/SessionManager;->startSession(Lcom/upsight/android/analytics/internal/session/SessionInitializer;)Lcom/upsight/android/analytics/internal/session/Session;

    .line 90
    :cond_0
    const-string v20, "message_id"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 91
    const-string v20, "message_id"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 92
    .local v12, "msgId":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent;->createBuilder(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;

    move-result-object v4

    .line 95
    .local v4, "clickEvent":Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;
    const-string v20, "campaign_id"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 96
    const-string v20, "campaign_id"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->setMsgCampaignId(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;

    .line 100
    :cond_1
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 102
    :try_start_0
    new-instance v14, Lcom/google/gson/JsonParser;

    invoke-direct {v14}, Lcom/google/gson/JsonParser;-><init>()V

    .line 103
    .local v14, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v14, v15}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    .line 104
    .local v10, "jsonElement":Lcom/google/gson/JsonElement;
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 105
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->addDynamicData(Lcom/google/gson/JsonObject;)Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v10    # "jsonElement":Lcom/google/gson/JsonElement;
    .end local v14    # "parser":Lcom/google/gson/JsonParser;
    :cond_2
    :goto_0
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .line 116
    .end local v4    # "clickEvent":Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;
    .end local v12    # "msgId":I
    :cond_3
    const-string v20, "contentId"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 117
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 119
    .local v5, "contentProviderBundle":Lorg/json/JSONObject;
    :try_start_1
    const-string v20, "name"

    const-string v21, "upsight"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 122
    .local v13, "parameters":Lorg/json/JSONObject;
    const-string v20, "content_id"

    const-string v21, "contentId"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 123
    const-string v20, "parameters"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    invoke-static {v5}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent;->createBuilder(Lorg/json/JSONObject;)Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;

    move-result-object v20

    const-string v21, "com_upsight_push_scope"

    .line 126
    invoke-virtual/range {v20 .. v21}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->setScope(Ljava/lang/String;)Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;

    move-result-object v18

    .line 129
    .local v18, "unrenderedEvent":Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;
    const-string v20, "campaign_id"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 130
    const-string v20, "campaign_id"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->setCampaignId(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;

    .line 133
    :cond_4
    invoke-virtual/range {v18 .. v19}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 142
    .end local v5    # "contentProviderBundle":Lorg/json/JSONObject;
    .end local v13    # "parameters":Lorg/json/JSONObject;
    .end local v18    # "unrenderedEvent":Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;
    :cond_5
    :goto_1
    const-string v20, "isDispatchFromForeground"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-nez v20, :cond_6

    sget-object v20, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->BACKGROUND:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    .line 143
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 145
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;->startActivity(Landroid/content/Intent;)V

    .line 148
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v11    # "messageIntent":Landroid/content/Intent;
    .end local v15    # "pushAnalytics":Ljava/lang/String;
    .end local v16    # "sessionManager":Lcom/upsight/android/analytics/internal/session/SessionManager;
    .end local v17    # "state":Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;
    :cond_7
    return-void

    .line 107
    .restart local v4    # "clickEvent":Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;
    .restart local v9    # "extras":Landroid/os/Bundle;
    .restart local v11    # "messageIntent":Landroid/content/Intent;
    .restart local v12    # "msgId":I
    .restart local v15    # "pushAnalytics":Ljava/lang/String;
    .restart local v16    # "sessionManager":Lcom/upsight/android/analytics/internal/session/SessionManager;
    .restart local v17    # "state":Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;
    :catch_0
    move-exception v7

    .line 108
    .local v7, "ex":Lcom/google/gson/JsonParseException;
    invoke-virtual/range {v19 .. v19}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v20

    sget-object v21, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;->LOG_TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Could not parse push analytics data in provided json string: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v7, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 135
    .end local v4    # "clickEvent":Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;
    .end local v7    # "ex":Lcom/google/gson/JsonParseException;
    .end local v12    # "msgId":I
    .restart local v5    # "contentProviderBundle":Lorg/json/JSONObject;
    :catch_1
    move-exception v6

    .line 136
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual/range {v19 .. v19}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v20

    sget-object v21, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;->LOG_TAG:Ljava/lang/String;

    const-string v22, "Could not construct \"content_provider\" bundle in \"upsight.content.unrendered\""

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v6, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
