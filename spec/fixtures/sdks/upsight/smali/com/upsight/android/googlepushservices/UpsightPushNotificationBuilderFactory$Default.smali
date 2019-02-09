.class public Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default;
.super Ljava/lang/Object;
.source "UpsightPushNotificationBuilderFactory.java"

# interfaces
.implements Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# static fields
.field public static final HTTP_REQUEST_BACKOFF_MULT:F = 2.0f

.field public static final HTTP_REQUEST_MAX_RETRIES:I = 0x3

.field public static final HTTP_REQUEST_TIMEOUT_MS:I = 0x1388


# instance fields
.field private mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/android/volley/toolbox/NoCache;

    invoke-direct {v1}, Lcom/android/volley/toolbox/NoCache;-><init>()V

    new-instance v2, Lcom/android/volley/toolbox/BasicNetwork;

    new-instance v3, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v3}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    invoke-direct {v0, v1, v2}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 86
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->start()V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default;)Lcom/android/volley/RequestQueue;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method


# virtual methods
.method protected getImageObservable(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p1, "imageUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1;-><init>(Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default;Ljava/lang/String;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationBuilder(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 9
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "imageUrl"    # Ljava/lang/String;
    .param p5, "channelId"    # Ljava/lang/String;
    .param p6, "priority"    # I

    .prologue
    const/4 v8, 0x0

    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, "picture":Landroid/graphics/Bitmap;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 95
    invoke-virtual {p0, p4}, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default;->isImageUrlValid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 96
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v4

    const-string v5, "Upsight"

    const-string v6, "Malformed notification picture URL, displaying notification without"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 111
    new-instance v4, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v4}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>()V

    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v2

    .line 116
    .local v2, "style":Landroid/support/v4/app/NotificationCompat$Style;
    :goto_1
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v4

    const-string v5, "Upsight"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Building notification channelId=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', priority="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", title=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', imageUrl=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, p5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v4, p6}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 122
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 123
    invoke-virtual {v4, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 124
    invoke-virtual {v4, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 125
    invoke-virtual {v4, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 120
    return-object v4

    .line 100
    .end local v2    # "style":Landroid/support/v4/app/NotificationCompat$Style;
    :cond_1
    :try_start_0
    invoke-virtual {p0, p4}, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default;->getImageObservable(Ljava/lang/String;)Lrx/Observable;

    move-result-object v4

    invoke-virtual {v4}, Lrx/Observable;->toBlocking()Lrx/observables/BlockingObservable;

    move-result-object v4

    invoke-virtual {v4}, Lrx/observables/BlockingObservable;->first()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 101
    :catch_0
    move-exception v3

    .line 102
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v4

    const-string v5, "Upsight"

    const-string v6, "Failed to download notification picture, displaying notification without"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v8

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 113
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_2
    new-instance v4, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v4}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v4, p3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v2

    .restart local v2    # "style":Landroid/support/v4/app/NotificationCompat$Style;
    goto/16 :goto_1
.end method

.method protected isImageUrlValid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 135
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
