.class public Lcom/upsight/android/UpsightGooglePushServicesExtension;
.super Lcom/upsight/android/UpsightExtension;
.source "UpsightGooglePushServicesExtension.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/UpsightExtension",
        "<",
        "Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesComponent;",
        "Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "com.upsight.push_channel.default"

.field public static final DEFAULT_NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "Announcements"

.field public static final EXTENSION_NAME:Ljava/lang/String; = "com.upsight.extension.googlepushservices"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mPushConfigManager:Lcom/upsight/android/googlepushservices/internal/PushConfigManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mUpsightPush:Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/upsight/android/UpsightGooglePushServicesExtension;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/UpsightGooglePushServicesExtension;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/upsight/android/UpsightExtension;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/upsight/android/UpsightGooglePushServicesExtension;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getApi()Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/upsight/android/UpsightGooglePushServicesExtension;->mUpsightPush:Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;

    return-object v0
.end method

.method public bridge synthetic getApi()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/upsight/android/UpsightGooglePushServicesExtension;->getApi()Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;

    move-result-object v0

    return-object v0
.end method

.method protected onPostCreate(Lcom/upsight/android/UpsightContext;)V
    .locals 13
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 68
    :try_start_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1a

    if-lt v8, v9, :cond_0

    .line 69
    const/4 v3, 0x3

    .line 70
    .local v3, "importance":I
    const-string v0, "Announcements"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    .local v0, "channelName":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 74
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x80

    .line 73
    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 75
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 76
    .local v5, "metaData":Landroid/os/Bundle;
    const-string v8, "com.upsight.push_channel.default.name"

    const-string v9, "Announcements"

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 81
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "metaData":Landroid/os/Bundle;
    :goto_0
    :try_start_2
    new-instance v6, Landroid/app/NotificationChannel;

    const-string v8, "com.upsight.push_channel.default"

    invoke-direct {v6, v8, v0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 82
    .local v6, "notificationChannel":Landroid/app/NotificationChannel;
    const-string v8, "notification"

    invoke-virtual {p1, v8}, Lcom/upsight/android/UpsightContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 83
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v7, :cond_0

    .line 85
    :try_start_3
    invoke-virtual {v7, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 86
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v8

    sget-object v9, Lcom/upsight/android/UpsightGooglePushServicesExtension;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Created notification channel com.upsight.push_channel.default("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10, v11}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 92
    .end local v0    # "channelName":Ljava/lang/String;
    .end local v3    # "importance":I
    .end local v6    # "notificationChannel":Landroid/app/NotificationChannel;
    .end local v7    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    :goto_1
    :try_start_4
    iget-object v8, p0, Lcom/upsight/android/UpsightGooglePushServicesExtension;->mPushConfigManager:Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

    invoke-virtual {v8}, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;->fetchCurrentConfigObservable()Lrx/Observable;

    move-result-object v8

    .line 93
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v9

    invoke-interface {v9}, Lcom/upsight/android/UpsightCoreComponent;->subscribeOnScheduler()Lrx/Scheduler;

    move-result-object v9

    invoke-virtual {v8, v9}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v8

    .line 94
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v9

    invoke-interface {v9}, Lcom/upsight/android/UpsightCoreComponent;->observeOnScheduler()Lrx/Scheduler;

    move-result-object v9

    invoke-virtual {v8, v9}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v8

    new-instance v9, Lcom/upsight/android/UpsightGooglePushServicesExtension$1;

    invoke-direct {v9, p0, p1}, Lcom/upsight/android/UpsightGooglePushServicesExtension$1;-><init>(Lcom/upsight/android/UpsightGooglePushServicesExtension;Lcom/upsight/android/UpsightContext;)V

    .line 95
    invoke-virtual {v8, v9}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 119
    :goto_2
    return-void

    .line 77
    .restart local v0    # "channelName":Ljava/lang/String;
    .restart local v3    # "importance":I
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v8

    const-string v9, "Upsight"

    const-string v10, "No name specified in manifest for push channel com.upsight.push_channel.default"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-interface {v8, v9, v10, v11}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 116
    .end local v0    # "channelName":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "importance":I
    :catch_1
    move-exception v1

    .line 117
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v8

    sget-object v9, Lcom/upsight/android/UpsightGooglePushServicesExtension;->LOG_TAG:Ljava/lang/String;

    const-string v10, "Failed to fetch push configurations"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-interface {v8, v9, v10, v11}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 87
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "channelName":Ljava/lang/String;
    .restart local v3    # "importance":I
    .restart local v6    # "notificationChannel":Landroid/app/NotificationChannel;
    .restart local v7    # "notificationManager":Landroid/app/NotificationManager;
    :catch_2
    move-exception v2

    .line 88
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v8

    sget-object v9, Lcom/upsight/android/UpsightGooglePushServicesExtension;->LOG_TAG:Ljava/lang/String;

    const-string v10, "Could not create default push notification channel"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    invoke-interface {v8, v9, v10, v11}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method

.method protected bridge synthetic onResolve(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/UpsightExtension$BaseComponent;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/upsight/android/UpsightGooglePushServicesExtension;->onResolve(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesComponent;

    move-result-object v0

    return-object v0
.end method

.method protected onResolve(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesComponent;
    .locals 2
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 55
    invoke-static {}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->builder()Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/upsight/android/googlepushservices/internal/PushModule;

    invoke-direct {v1, p1}, Lcom/upsight/android/googlepushservices/internal/PushModule;-><init>(Lcom/upsight/android/UpsightContext;)V

    .line 56
    invoke-virtual {v0, v1}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->pushModule(Lcom/upsight/android/googlepushservices/internal/PushModule;)Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->build()Lcom/upsight/android/googlepushservices/internal/GooglePushServicesComponent;

    move-result-object v0

    .line 55
    return-object v0
.end method
