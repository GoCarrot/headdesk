.class public Lio/teak/sdk/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/c;


# static fields
.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;


# instance fields
.field private final a:Lio/teak/sdk/d/f;

.field private final b:Lio/teak/sdk/g/c;

.field private final c:Lio/teak/sdk/d/e;

.field private final d:Lio/teak/sdk/push/b;

.field private final e:Lio/teak/sdk/b/b;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/d$b;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lio/teak/sdk/d/c;

    invoke-direct {v0, p1}, Lio/teak/sdk/d/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/teak/sdk/a;->a:Lio/teak/sdk/d/f;

    .line 48
    invoke-static {p1}, Lio/teak/sdk/a;->c(Landroid/content/Context;)Lio/teak/sdk/g/c;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/a;->b:Lio/teak/sdk/g/c;

    .line 49
    new-instance v0, Lio/teak/sdk/d/a;

    invoke-direct {v0, p1}, Lio/teak/sdk/d/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/teak/sdk/a;->c:Lio/teak/sdk/d/e;

    .line 50
    invoke-static {p1}, Lio/teak/sdk/d/b;->a(Landroid/content/Context;)Lio/teak/sdk/d/b;

    .line 51
    invoke-static {p1}, Lio/teak/sdk/b/e;->a(Landroid/content/Context;)Lio/teak/sdk/b/e;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/a;->e:Lio/teak/sdk/b/b;

    .line 56
    const/4 v0, 0x0

    .line 58
    :try_start_0
    invoke-static {p1}, Lio/teak/sdk/a;->d(Landroid/content/Context;)Lio/teak/sdk/push/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 61
    :goto_0
    iput-object v0, p0, Lio/teak/sdk/a;->d:Lio/teak/sdk/push/b;

    .line 62
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;Lio/teak/sdk/TeakNotification;)Landroid/app/Notification;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2071
    iget v1, p2, Lio/teak/sdk/TeakNotification;->a:I

    if-nez v1, :cond_0

    .line 2085
    :goto_0
    return-object v0

    .line 2076
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lio/teak/sdk/a;->b(Landroid/content/Context;Landroid/os/Bundle;Lio/teak/sdk/TeakNotification;)Landroid/app/Notification;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2077
    :catch_0
    move-exception v1

    .line 2078
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2079
    iget-object v3, p2, Lio/teak/sdk/TeakNotification;->b:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 2080
    const-string v3, "teakCreativeName"

    iget-object v4, p2, Lio/teak/sdk/TeakNotification;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2082
    :cond_1
    sget-object v3, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v3, v1, v2}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;Ljava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 5069
    .line 5154
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 5069
    return-object v0
.end method

.method public static a(Landroid/os/Bundle;)Lio/teak/sdk/e/c;
    .locals 4

    .prologue
    .line 1052
    new-instance v1, Lio/teak/sdk/e/c;

    invoke-direct {v1}, Lio/teak/sdk/e/c;-><init>()V

    .line 1053
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1054
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1056
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lio/teak/sdk/e/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lio/teak/sdk/e/c;
    :try_end_0
    .catch Lio/teak/sdk/e/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1059
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1060
    :cond_0
    return-object v1
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 2092
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2093
    sget-object v1, Lio/teak/sdk/a;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 2097
    :try_start_0
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "teak"

    const-string v3, "Notifications"

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 2098
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 2099
    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 2100
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 2101
    const/4 v2, 0x6

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 2102
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 2103
    const-string v0, "teak"

    sput-object v0, Lio/teak/sdk/a;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2107
    :cond_0
    :goto_0
    sget-object v0, Lio/teak/sdk/a;->f:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 2101
    :array_0
    .array-data 8
        0x64
        0x12c
        0x0
        0x0
        0x64
        0x12c
    .end array-data
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 5432
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/teak/sdk/a;->a(Ljava/util/Map;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5433
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 5434
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 5439
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lio/teak/sdk/a;->a(Ljava/util/Map;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5440
    const-string v1, "sig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5441
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Map;Z)Ljava/lang/StringBuilder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 5445
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5446
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 5447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5448
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5449
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5450
    if-eqz v1, :cond_4

    .line 5452
    instance-of v4, v1, Ljava/util/Map;

    if-eqz v4, :cond_1

    .line 5453
    new-instance v4, Lio/teak/sdk/e/c;

    check-cast v1, Ljava/util/Map;

    invoke-direct {v4, v1}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4}, Lio/teak/sdk/e/c;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5461
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5454
    :cond_1
    instance-of v4, v1, Ljava/lang/reflect/Array;

    if-eqz v4, :cond_2

    .line 5455
    new-instance v4, Lio/teak/sdk/e/a;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1}, Lio/teak/sdk/e/a;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Lio/teak/sdk/e/a;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 5456
    :cond_2
    instance-of v4, v1, Ljava/util/Collection;

    if-eqz v4, :cond_3

    .line 5457
    new-instance v4, Lio/teak/sdk/e/a;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v4, v1}, Lio/teak/sdk/e/a;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Lio/teak/sdk/e/a;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 5459
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 5463
    :cond_4
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v4, "request"

    const-string v5, "Value for key is null."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "key"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v6}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v4, v5, v0}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 5466
    :cond_5
    return-object v2
.end method

.method public static varargs a([Ljava/lang/Object;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2041
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2042
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2043
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Args must be in key value pairs."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2044
    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 2045
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p0, v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2044
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2047
    :cond_1
    return-object v1
.end method

.method public static a(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 7014
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7015
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 7017
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 6015
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 6016
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 6017
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1032
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1033
    if-eqz v0, :cond_0

    .line 1034
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1036
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Landroid/os/Bundle;Lio/teak/sdk/TeakNotification;)Landroid/app/Notification;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 2159
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2160
    if-nez v0, :cond_8

    move v6, v1

    .line 2162
    :goto_0
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2163
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2164
    if-eqz v0, :cond_0

    .line 2165
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2169
    :cond_0
    iget-object v0, p2, Lio/teak/sdk/TeakNotification;->d:Lio/teak/sdk/e/c;

    const-string v2, "displayContentViewAboveBigContentView"

    invoke-virtual {v0, v2, v1}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;Z)Z

    move-result v10

    .line 2206
    new-instance v1, Lio/teak/sdk/g;

    invoke-direct {v1, p0}, Lio/teak/sdk/g;-><init>(Landroid/content/Context;)V

    .line 2208
    invoke-static {p0}, Lio/teak/sdk/a;->e(Landroid/content/Context;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 2211
    new-instance v0, Landroid/text/SpannedString;

    iget-object v2, p2, Lio/teak/sdk/TeakNotification;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 2213
    :try_start_0
    iget-object v2, p2, Lio/teak/sdk/TeakNotification;->c:Ljava/lang/String;

    .line 3154
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2221
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2222
    const/4 v2, -0x1

    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2223
    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2224
    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2226
    :try_start_1
    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2235
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "setColor"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2236
    if-eqz v0, :cond_3

    .line 2237
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "io_teak_notification_accent_color"

    .line 3191
    iget-object v9, v1, Lio/teak/sdk/g;->a:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v11, "integer"

    iget-object v12, v1, Lio/teak/sdk/g;->a:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v5, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 3192
    if-nez v9, :cond_9

    .line 3193
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Could not find R.integer."

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 2245
    :cond_3
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2246
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2247
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2256
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_a

    .line 2258
    :try_start_4
    const-string v0, "io_teak_small_notification_icon"

    invoke-virtual {v1, v0}, Lio/teak/sdk/g;->c(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v0

    .line 2265
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "io_teak_large_notification_icon"

    .line 2266
    invoke-virtual {v1, v4}, Lio/teak/sdk/g;->c(Ljava/lang/String;)I

    move-result v4

    .line 2265
    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v2

    .line 2270
    :goto_3
    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2271
    if-eqz v2, :cond_4

    .line 2272
    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2276
    :cond_4
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 2277
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v9, "io.teak.sdk.Teak"

    invoke-direct {v2, v4, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2295
    new-instance v4, Lio/teak/sdk/h;

    invoke-direct {v4, p1, v2, p0, v0}, Lio/teak/sdk/h;-><init>(Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/content/Context;Ljava/util/Random;)V

    .line 2299
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".intent.TEAK_NOTIFICATION_CLEARED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3292
    const/4 v2, 0x0

    invoke-virtual {v4, v0, v2}, Lio/teak/sdk/h;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2299
    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".intent.TEAK_NOTIFICATION_OPENED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4292
    const/4 v2, 0x0

    invoke-virtual {v4, v0, v2}, Lio/teak/sdk/h;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2302
    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 2312
    :cond_5
    :try_start_7
    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v9

    .line 2541
    new-instance v0, Lio/teak/sdk/i;

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lio/teak/sdk/i;-><init>(Lio/teak/sdk/g;Landroid/content/Context;Lio/teak/sdk/TeakNotification;Lio/teak/sdk/h;IILandroid/util/DisplayMetrics;)V

    .line 2550
    new-instance v2, Lio/teak/sdk/f;

    invoke-direct {v2, v9}, Lio/teak/sdk/f;-><init>(Landroid/app/Notification;)V

    .line 2551
    iget-object v3, p2, Lio/teak/sdk/TeakNotification;->d:Lio/teak/sdk/e/c;

    const-string v4, "contentView"

    invoke-virtual {v3, v4}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/teak/sdk/i;->a(Lio/teak/sdk/i;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-static {v2, v3}, Lio/teak/sdk/f;->a(Lio/teak/sdk/f;Landroid/widget/RemoteViews;)V

    .line 2555
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_6

    iget-object v2, p2, Lio/teak/sdk/TeakNotification;->d:Lio/teak/sdk/e/c;

    const-string v3, "bigContentView"

    invoke-virtual {v2, v3}, Lio/teak/sdk/e/c;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2557
    :try_start_8
    iget-object v2, p2, Lio/teak/sdk/TeakNotification;->d:Lio/teak/sdk/e/c;

    const-string v3, "bigContentView"

    invoke-virtual {v2, v3}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/teak/sdk/i;->b(Lio/teak/sdk/i;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v8

    .line 2560
    if-eqz v10, :cond_c

    .line 2561
    iget-object v2, p2, Lio/teak/sdk/TeakNotification;->d:Lio/teak/sdk/e/c;

    const-string v3, "contentView"

    invoke-virtual {v2, v3}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/teak/sdk/i;->a(Lio/teak/sdk/i;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 2562
    const-string v2, "small_view_container"

    invoke-virtual {v1, v2}, Lio/teak/sdk/g;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1, v0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 2576
    :cond_6
    :goto_4
    if-eqz v8, :cond_7

    .line 2579
    :try_start_9
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "bigContentView"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2580
    invoke-virtual {v0, v9, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    :cond_7
    :goto_5
    move-object v8, v9

    .line 2585
    :goto_6
    return-object v8

    .line 2160
    :cond_8
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v6

    goto/16 :goto_0

    .line 2214
    :catch_1
    move-exception v2

    .line 2215
    const-string v4, "teakUnitTest"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2216
    throw v2

    .line 2227
    :catch_2
    move-exception v0

    .line 2228
    const-string v2, "teakUnitTest"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2229
    throw v0

    .line 3195
    :cond_9
    :try_start_a
    iget-object v5, v1, Lio/teak/sdk/g;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 2237
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_1

    .line 2249
    :catch_3
    move-exception v0

    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "notification_builder"

    const-string v2, "Unable to load app icon resource for Notification."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_4
    move-exception v0

    :cond_a
    move v0, v5

    goto/16 :goto_2

    :catch_5
    move-exception v2

    move-object v2, v8

    goto/16 :goto_3

    .line 2303
    :catch_6
    move-exception v0

    .line 2304
    const-string v2, "teakUnitTest"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2305
    throw v0

    .line 2313
    :catch_7
    move-exception v0

    .line 2314
    const-string v1, "teakUnitTest"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2315
    throw v0

    .line 2317
    :cond_b
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    .line 2318
    const v0, 0x7fffffff

    iput v0, v8, Landroid/app/Notification;->flags:I

    goto :goto_6

    .line 2564
    :cond_c
    :try_start_b
    const-string v0, "small_view_container"

    invoke-virtual {v1, v0}, Lio/teak/sdk/g;->a(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {v8, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_4

    .line 2566
    :catch_8
    move-exception v0

    .line 2567
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2568
    iget-object v2, p2, Lio/teak/sdk/TeakNotification;->b:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 2569
    const-string v2, "teakCreativeName"

    iget-object v3, p2, Lio/teak/sdk/TeakNotification;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2571
    :cond_d
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v2, v0, v1}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;Ljava/util/Map;)V

    goto/16 :goto_4

    :catch_9
    move-exception v0

    goto/16 :goto_5
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 2113
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2114
    sget-object v1, Lio/teak/sdk/a;->g:Ljava/lang/String;

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 2118
    :try_start_0
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "teak-quiet"

    const-string v3, "Notifications"

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 2119
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 2120
    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 2121
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 2122
    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 2123
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 2124
    const-string v0, "teak-quiet"

    sput-object v0, Lio/teak/sdk/a;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2128
    :cond_0
    :goto_0
    sget-object v0, Lio/teak/sdk/a;->g:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Lio/teak/sdk/g/c;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 106
    if-nez v0, :cond_0

    .line 107
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v2, "factory.istore"

    const-string v3, "Unable to get Package Manager."

    invoke-virtual {v0, v2, v3}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 144
    :goto_0
    return-object v0

    .line 111
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 112
    if-nez v2, :cond_1

    .line 113
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v2, "factory.istore"

    const-string v3, "Unable to get Bundle Id."

    invoke-virtual {v0, v2, v3}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 114
    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_4

    .line 121
    const-class v2, Lio/teak/sdk/g/b;

    .line 122
    const-string v3, "com.amazon.venezia"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 124
    :try_start_0
    const-string v0, "com.amazon.device.iap.PurchasingListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 129
    :goto_1
    if-eqz v0, :cond_2

    .line 130
    const-class v0, Lio/teak/sdk/g/a;

    .line 135
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    :goto_3
    check-cast v0, Lio/teak/sdk/g/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    sget-object v3, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v3, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 135
    goto :goto_3

    .line 136
    :catch_1
    move-exception v0

    .line 137
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v2, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    :goto_4
    move-object v0, v1

    .line 144
    goto :goto_0

    .line 141
    :cond_4
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v2, "factory.istore"

    const-string v3, "Installer package (Store) is null, purchase tracking disabled."

    invoke-virtual {v0, v2, v3}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    move-object v0, v2

    goto :goto_2
.end method

.method private static d(Landroid/content/Context;)Lio/teak/sdk/push/b;
    .locals 10
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/d$b;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 149
    .line 152
    :try_start_0
    const-string v0, "com.amazon.device.messaging.ADM"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 153
    new-instance v0, Lcom/amazon/device/messaging/ADM;

    invoke-direct {v0, p0}, Lcom/amazon/device/messaging/ADM;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    new-instance v0, Lio/teak/sdk/push/ADMPushProvider;

    invoke-direct {v0}, Lio/teak/sdk/push/ADMPushProvider;-><init>()V

    .line 155
    invoke-virtual {v0, p0}, Lio/teak/sdk/push/ADMPushProvider;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :try_start_1
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v3, "factory.pushProvider"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "type"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "adm"

    aput-object v6, v4, v5

    invoke-static {v4}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :goto_0
    move-object v3, v0

    .line 162
    :goto_1
    if-nez v3, :cond_1

    .line 164
    :try_start_2
    const-string v0, "com.google.android.gms.common.GooglePlayServicesUtil"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 166
    :try_start_3
    new-instance v2, Lio/teak/sdk/push/a;

    invoke-direct {v2, p0}, Lio/teak/sdk/push/a;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Lio/teak/sdk/d$b; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 167
    :try_start_4
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v3, "factory.pushProvider"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "type"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "gcm"

    aput-object v6, v4, v5

    invoke-static {v4}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_4
    .catch Lio/teak/sdk/d$b; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 175
    :goto_2
    if-nez v2, :cond_0

    .line 176
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v3, "factory.pushProvider"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "type"

    aput-object v5, v4, v7

    const-string v5, "none"

    aput-object v5, v4, v8

    invoke-static {v4}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 177
    if-eqz v1, :cond_0

    .line 178
    throw v1

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_3
    move-object v3, v0

    goto :goto_1

    .line 168
    :catch_1
    move-exception v0

    move-object v1, v3

    :goto_4
    move-object v2, v1

    move-object v1, v0

    .line 172
    goto :goto_2

    .line 181
    :cond_0
    return-object v2

    :catch_2
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    .line 168
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_5
    move-exception v2

    goto :goto_3

    :cond_1
    move-object v2, v3

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    .line 2133
    const/4 v0, 0x0

    .line 2135
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2136
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2141
    :goto_0
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 2142
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {p0}, Lio/teak/sdk/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2143
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2149
    :goto_1
    return-object v0

    .line 2146
    :cond_0
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Lio/teak/sdk/g/c;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lio/teak/sdk/a;->b:Lio/teak/sdk/g/c;

    return-object v0
.end method

.method public final b()Lio/teak/sdk/d/f;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lio/teak/sdk/a;->a:Lio/teak/sdk/d/f;

    return-object v0
.end method

.method public final c()Lio/teak/sdk/d/e;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lio/teak/sdk/a;->c:Lio/teak/sdk/d/e;

    return-object v0
.end method

.method public final d()Lio/teak/sdk/push/b;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lio/teak/sdk/a;->d:Lio/teak/sdk/push/b;

    return-object v0
.end method

.method public final e()Lio/teak/sdk/b/b;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lio/teak/sdk/a;->e:Lio/teak/sdk/b/b;

    return-object v0
.end method
