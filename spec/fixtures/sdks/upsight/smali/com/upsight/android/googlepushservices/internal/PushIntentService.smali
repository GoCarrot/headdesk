.class public Lcom/upsight/android/googlepushservices/internal/PushIntentService;
.super Landroid/app/IntentService;
.source "PushIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;,
        Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;,
        Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;
    }
.end annotation


# static fields
.field private static final ACTION_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final ACTION_CONTENT_UNIT:Ljava/lang/String; = "content_id"

.field private static final ACTION_PLACEMENT:Ljava/lang/String; = "placement"

.field private static final INVALID_MSG_ID:Ljava/lang/Integer;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NOTIFICATION_BUILDER_FACTORY_KEY_NAME:Ljava/lang/String; = "com.upsight.notification_builder_factory"

.field private static final SERVICE_NAME:Ljava/lang/String; = "UpsightGcmPushIntentService"

.field private static final URI_HOST:Ljava/lang/String; = "com.playhaven.android"

.field private static final URI_SCHEME:Ljava/lang/String; = "playhaven"


# instance fields
.field mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNotificationBuilderFactory:Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory;

.field mUpsight:Lcom/upsight/android/UpsightContext;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->LOG_TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->INVALID_MSG_ID:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "UpsightGcmPushIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private interpretPushEvent(Landroid/os/Bundle;)V
    .locals 24
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 129
    const/16 v22, 0x0

    .line 131
    .local v22, "uri":Landroid/net/Uri;
    sget-object v4, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->uri:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    invoke-virtual {v4}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 132
    .local v23, "uriString":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 133
    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 136
    :cond_0
    if-eqz v22, :cond_1

    .line 137
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v4}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v19

    .line 139
    .local v19, "logger":Lcom/upsight/android/logger/UpsightLogger;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->parsePushIds(Landroid/net/Uri;Landroid/os/Bundle;Lcom/upsight/android/logger/UpsightLogger;)Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;

    move-result-object v18

    .line 141
    .local v18, "ids":Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;
    const/4 v5, 0x0

    .line 142
    .local v5, "messageIntent":Landroid/content/Intent;
    const/4 v6, 0x0

    .line 143
    .local v6, "isDispatchFromForeground":Z
    sget-object v4, Lcom/upsight/android/googlepushservices/internal/PushIntentService$1;->$SwitchMap$com$upsight$android$googlepushservices$internal$PushIntentService$UriTypes:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->checkUri(Lcom/upsight/android/logger/UpsightLogger;Landroid/net/Uri;)Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    move-result-object v7

    invoke-virtual {v7}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_0

    .line 169
    :goto_0
    if-eqz v5, :cond_1

    .line 170
    sget-object v4, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->title:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    invoke-virtual {v4}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 171
    .local v11, "title":Ljava/lang/String;
    sget-object v4, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->text:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    invoke-virtual {v4}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 172
    .local v12, "text":Ljava/lang/String;
    sget-object v4, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->image_url:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    invoke-virtual {v4}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 173
    .local v13, "imageUrl":Ljava/lang/String;
    sget-object v4, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->priority:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    invoke-virtual {v4}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-static {v4, v7, v0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->parseAsInt(Ljava/lang/String;Ljava/lang/Integer;Lcom/upsight/android/logger/UpsightLogger;)Ljava/lang/Integer;

    move-result-object v21

    .line 174
    .local v21, "priority":Ljava/lang/Integer;
    const-string v14, "com.upsight.push_channel.default"

    .line 176
    .local v14, "channelId":Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;->campaignId:Ljava/lang/Integer;

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;->messageId:Ljava/lang/Integer;

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;->contentId:Ljava/lang/Integer;

    move-object/from16 v0, v18

    iget-object v10, v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;->pushAnalytics:Ljava/lang/String;

    .line 178
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v4, p0

    .line 176
    invoke-direct/range {v4 .. v15}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->showNotification(Landroid/content/Intent;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 181
    .end local v5    # "messageIntent":Landroid/content/Intent;
    .end local v6    # "isDispatchFromForeground":Z
    .end local v11    # "title":Ljava/lang/String;
    .end local v12    # "text":Ljava/lang/String;
    .end local v13    # "imageUrl":Ljava/lang/String;
    .end local v14    # "channelId":Ljava/lang/String;
    .end local v18    # "ids":Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;
    .end local v19    # "logger":Lcom/upsight/android/logger/UpsightLogger;
    .end local v21    # "priority":Ljava/lang/Integer;
    :cond_1
    return-void

    .line 145
    .restart local v5    # "messageIntent":Landroid/content/Intent;
    .restart local v6    # "isDispatchFromForeground":Z
    .restart local v18    # "ids":Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;
    .restart local v19    # "logger":Lcom/upsight/android/logger/UpsightLogger;
    :pswitch_0
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "messageIntent":Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    move-object/from16 v0, v22

    invoke-direct {v5, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 146
    .restart local v5    # "messageIntent":Landroid/content/Intent;
    const/4 v6, 0x1

    .line 147
    goto :goto_0

    .line 150
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 151
    const/4 v6, 0x0

    .line 152
    goto :goto_0

    .line 156
    :pswitch_2
    :try_start_0
    const-string v4, "activity"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v16

    .line 157
    .local v16, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v20, Landroid/content/Intent;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v5    # "messageIntent":Landroid/content/Intent;
    .local v20, "messageIntent":Landroid/content/Intent;
    const/4 v6, 0x1

    move-object/from16 v5, v20

    .line 161
    .end local v20    # "messageIntent":Landroid/content/Intent;
    .restart local v5    # "messageIntent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 159
    .end local v16    # "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v17

    .line 160
    .local v17, "e":Ljava/lang/ClassNotFoundException;
    sget-object v4, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Could not parse class name"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v4, v1, v7, v8}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 164
    .end local v17    # "e":Ljava/lang/ClassNotFoundException;
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 165
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static parseAsInt(Ljava/lang/String;Ljava/lang/Integer;Lcom/upsight/android/logger/UpsightLogger;)Ljava/lang/Integer;
    .locals 7
    .param p0, "stringValue"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/Integer;
    .param p2, "logger"    # Lcom/upsight/android/logger/UpsightLogger;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 67
    move-object v1, p1

    .line 68
    .local v1, "integerValue":Ljava/lang/Integer;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 79
    :cond_0
    :goto_0
    return-object v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/NumberFormatException;
    if-nez p1, :cond_1

    .line 73
    sget-object v2, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Could not parse %s. Setting to null."

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {p2, v2, v0, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    :cond_1
    sget-object v2, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Could not parse %s. Setting to %d."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    aput-object p1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {p2, v2, v0, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private showNotification(Landroid/content/Intent;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .param p1, "messageIntent"    # Landroid/content/Intent;
    .param p2, "isDispatchFromForeground"    # Z
    .param p3, "campaignId"    # Ljava/lang/Integer;
    .param p4, "messageId"    # Ljava/lang/Integer;
    .param p5, "contentId"    # Ljava/lang/Integer;
    .param p6, "analyticsFields"    # Ljava/lang/String;
    .param p7, "title"    # Ljava/lang/String;
    .param p8, "text"    # Ljava/lang/String;
    .param p9, "imageUrl"    # Ljava/lang/String;
    .param p10, "channelId"    # Ljava/lang/String;
    .param p11, "priority"    # I

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 299
    invoke-virtual {p0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;->newIntent(Landroid/content/Context;Landroid/content/Intent;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x50000000

    .line 298
    invoke-static {v10, v11, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 303
    .local v9, "notifyIntent":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->mNotificationBuilderFactory:Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory;

    if-nez v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->loadNotificationBuilderFactory()Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->mNotificationBuilderFactory:Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->mNotificationBuilderFactory:Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory;

    iget-object v1, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->mUpsight:Lcom/upsight/android/UpsightContext;

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move/from16 v6, p11

    .line 308
    invoke-interface/range {v0 .. v6}, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory;->getNotificationBuilder(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 309
    invoke-virtual {v0, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 310
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 312
    .local v7, "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 313
    .local v8, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 314
    return-void
.end method


# virtual methods
.method public checkUri(Lcom/upsight/android/logger/UpsightLogger;Landroid/net/Uri;)Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;
    .locals 9
    .param p1, "logger"    # Lcom/upsight/android/logger/UpsightLogger;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 193
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "scheme":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 197
    :cond_0
    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Invalid URI, host or scheme is null or empty: %s."

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {p1, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->INVALID:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    .line 224
    :goto_0
    return-object v5

    .line 201
    :cond_1
    const-string v5, "playhaven"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "com.playhaven.android"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 202
    const-string v5, "activity"

    invoke-virtual {p2, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 203
    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->ACTIVITY:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    goto :goto_0

    .line 205
    :cond_2
    const-string v5, "placement"

    invoke-virtual {p2, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 206
    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->PLACEMENT:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    goto :goto_0

    .line 208
    :cond_3
    const-string v5, "content_id"

    invoke-virtual {p2, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 209
    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->PLACEMENT:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    goto :goto_0

    .line 211
    :cond_4
    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->DEFAULT:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    goto :goto_0

    .line 217
    :cond_5
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    .line 218
    .local v4, "testIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 224
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_6

    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->INVALID:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    goto :goto_0

    .line 219
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v4    # "testIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Nothing registered for %s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {p1, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->INVALID:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    goto :goto_0

    .line 224
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "testIntent":Landroid/content/Intent;
    :cond_6
    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->CUSTOM:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    goto :goto_0
.end method

.method loadNotificationBuilderFactory()Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 236
    iget-object v5, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v5}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v4

    .line 240
    .local v4, "logger":Lcom/upsight/android/logger/UpsightLogger;
    :try_start_0
    invoke-virtual {p0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 241
    invoke-virtual {p0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 245
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v5, "com.upsight.notification_builder_factory"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 248
    const-string v5, "com.upsight.notification_builder_factory"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 252
    .local v2, "customBuilderClassName":Ljava/lang/String;
    :try_start_1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 255
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 256
    const-string v5, "Upsight"

    const-string v6, "Class %s must implement %s!"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 257
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 256
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 279
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "customBuilderClassName":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v5, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default;

    invoke-direct {v5}, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default;-><init>()V

    :goto_1
    return-object v5

    .line 260
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "customBuilderClassName":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 263
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 264
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    :try_start_3
    const-string v5, "Upsight"

    const-string v6, "Unexpected error: Class: %s was not found."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 274
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "customBuilderClassName":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 275
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Upsight"

    const-string v6, "Unexpected error: Package name missing!?"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v3, v7, v10

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 266
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "customBuilderClassName":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 267
    .local v3, "e":Ljava/lang/InstantiationException;
    :try_start_4
    const-string v5, "Upsight"

    const-string v6, "Unexpected error: Class: %s does not have public access."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 269
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v3

    .line 270
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "Upsight"

    const-string v6, "Unexpected error: Class: %s could not be instantiated."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    invoke-static {p0}, Lcom/upsight/android/Upsight;->createContext(Landroid/content/Context;)Lcom/upsight/android/UpsightContext;

    move-result-object v3

    const-string v4, "com.upsight.extension.googlepushservices"

    .line 85
    invoke-virtual {v3, v4}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightGooglePushServicesExtension;

    .line 86
    .local v0, "extension":Lcom/upsight/android/UpsightGooglePushServicesExtension;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/upsight/android/UpsightGooglePushServicesExtension;->getComponent()Lcom/upsight/android/UpsightExtension$BaseComponent;

    move-result-object v3

    check-cast v3, Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesComponent;

    invoke-interface {v3, p0}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesComponent;->inject(Lcom/upsight/android/googlepushservices/internal/PushIntentService;)V

    .line 89
    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "messageType":Ljava/lang/String;
    const-string v3, "gcm"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 92
    .local v1, "extras":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v3}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v3

    sget-object v4, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->message_id:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    invoke-virtual {v3}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 95
    invoke-direct {p0, v1}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->interpretPushEvent(Landroid/os/Bundle;)V

    .line 100
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "messageType":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/upsight/android/googlepushservices/internal/PushBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 101
    return-void
.end method

.method parsePushIds(Landroid/net/Uri;Landroid/os/Bundle;Lcom/upsight/android/logger/UpsightLogger;)Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "logger"    # Lcom/upsight/android/logger/UpsightLogger;

    .prologue
    const/4 v6, 0x0

    .line 114
    sget-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->message_id:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    invoke-virtual {v0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->INVALID_MSG_ID:Ljava/lang/Integer;

    invoke-static {v0, v1, p3}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->parseAsInt(Ljava/lang/String;Ljava/lang/Integer;Lcom/upsight/android/logger/UpsightLogger;)Ljava/lang/Integer;

    move-result-object v2

    .line 117
    .local v2, "messageId":Ljava/lang/Integer;
    sget-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->msg_campaign_id:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    invoke-virtual {v0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, p3}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->parseAsInt(Ljava/lang/String;Ljava/lang/Integer;Lcom/upsight/android/logger/UpsightLogger;)Ljava/lang/Integer;

    move-result-object v3

    .line 120
    .local v3, "campaignId":Ljava/lang/Integer;
    sget-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->content_id:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    invoke-virtual {v0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, p3}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->parseAsInt(Ljava/lang/String;Ljava/lang/Integer;Lcom/upsight/android/logger/UpsightLogger;)Ljava/lang/Integer;

    move-result-object v4

    .line 122
    .local v4, "contentId":Ljava/lang/Integer;
    sget-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->upsight_data:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    invoke-virtual {v0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "pushAnalytics":Ljava/lang/String;
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;-><init>(Lcom/upsight/android/googlepushservices/internal/PushIntentService;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/upsight/android/googlepushservices/internal/PushIntentService$1;)V

    return-object v0
.end method
