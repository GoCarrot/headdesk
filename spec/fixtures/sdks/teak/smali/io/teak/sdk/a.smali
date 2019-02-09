.class public Lio/teak/sdk/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/d;


# static fields
.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;


# instance fields
.field private final a:Lio/teak/sdk/d/f;

.field private final b:Lio/teak/sdk/h/c;

.field private final c:Lio/teak/sdk/d/e;

.field private final d:Lio/teak/sdk/push/a;

.field private final e:Lio/teak/sdk/b/c;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e$b;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lio/teak/sdk/d/c;

    invoke-direct {v0, p1}, Lio/teak/sdk/d/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/teak/sdk/a;->a:Lio/teak/sdk/d/f;

    .line 33
    invoke-static {p1}, Lio/teak/sdk/a;->c(Landroid/content/Context;)Lio/teak/sdk/h/c;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/a;->b:Lio/teak/sdk/h/c;

    .line 34
    new-instance v0, Lio/teak/sdk/d/a;

    invoke-direct {v0, p1}, Lio/teak/sdk/d/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/teak/sdk/a;->c:Lio/teak/sdk/d/e;

    .line 35
    invoke-static {p1}, Lio/teak/sdk/d/b;->a(Landroid/content/Context;)Lio/teak/sdk/d/b;

    .line 36
    invoke-static {p1}, Lio/teak/sdk/b/f;->a(Landroid/content/Context;)Lio/teak/sdk/b/f;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/a;->e:Lio/teak/sdk/b/c;

    .line 41
    const/4 v0, 0x0

    .line 43
    :try_start_0
    invoke-static {p1}, Lio/teak/sdk/a;->d(Landroid/content/Context;)Lio/teak/sdk/push/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    :goto_0
    iput-object v0, p0, Lio/teak/sdk/a;->d:Lio/teak/sdk/push/a;

    .line 47
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;Lio/teak/sdk/TeakNotification;)Landroid/app/Notification;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/k;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1068
    iget v1, p2, Lio/teak/sdk/TeakNotification;->notificationVersion:I

    if-nez v1, :cond_0

    .line 1084
    :goto_0
    return-object v0

    .line 1073
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lio/teak/sdk/a;->b(Landroid/content/Context;Landroid/os/Bundle;Lio/teak/sdk/TeakNotification;)Landroid/app/Notification;
    :try_end_0
    .catch Lio/teak/sdk/k; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 1074
    :catch_0
    move-exception v0

    .line 1075
    throw v0

    .line 1076
    :catch_1
    move-exception v1

    .line 1077
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1078
    iget-object v3, p2, Lio/teak/sdk/TeakNotification;->teakCreativeName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1079
    const-string v3, "teakCreativeName"

    iget-object v4, p2, Lio/teak/sdk/TeakNotification;->teakCreativeName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    :cond_1
    sget-object v3, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v3, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;Ljava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 4060
    .line 4149
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 4060
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1091
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1092
    sget-object v1, Lio/teak/sdk/a;->f:Ljava/lang/String;

    if-nez v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 1095
    :try_start_0
    const-string v1, "teak"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1097
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "teak"

    const-string v3, "Notifications"

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 1098
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 1099
    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 1100
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 1101
    const/4 v2, 0x6

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 1102
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1104
    :cond_0
    const-string v0, "teak"

    sput-object v0, Lio/teak/sdk/a;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1108
    :cond_1
    :goto_0
    sget-object v0, Lio/teak/sdk/a;->f:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 1101
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

.method private static a(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4429
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4430
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 4431
    check-cast p1, Ljava/util/Map;

    .line 4432
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4433
    const-string v3, "%s[%s]"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p0, v4, v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0, p2}, Lio/teak/sdk/a;->a(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4435
    :cond_0
    instance-of v0, p1, Ljava/util/Collection;

    if-nez v0, :cond_1

    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 4437
    :cond_1
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/Collection;

    .line 4438
    :goto_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4439
    const-string v4, "%s[]"

    new-array v5, v7, [Ljava/lang/Object;

    if-nez p0, :cond_3

    const-string v0, ""

    :goto_3
    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, p2}, Lio/teak/sdk/a;->a(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4437
    :cond_2
    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object v0, p0

    .line 4439
    goto :goto_3

    .line 4442
    :cond_4
    if-nez p0, :cond_7

    .line 4443
    if-eqz p2, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4448
    :cond_5
    :goto_5
    const-string v0, "&"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4443
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 4445
    :cond_7
    const-string v2, "%s=%s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p0, v3, v6

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
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
    .line 4420
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/teak/sdk/a;->a(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
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
    .line 4425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lio/teak/sdk/a;->a(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Map;Z)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 4452
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4453
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4454
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4455
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4456
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 4457
    if-eqz v3, :cond_0

    .line 4458
    invoke-static {v0, v3, p1}, Lio/teak/sdk/a;->a(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4460
    :cond_0
    sget-object v3, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

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

    invoke-virtual {v3, v4, v5, v0}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 4463
    :cond_1
    const-string v0, "&"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5021
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5022
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 5024
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
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
    .line 1032
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1033
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1034
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Args must be in key value pairs."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1035
    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1036
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p0, v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1038
    :cond_1
    return-object v1
.end method

.method public static a(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 6014
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6015
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 6017
    :cond_0
    return-void
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

    .line 1154
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1155
    if-nez v0, :cond_8

    move v6, v1

    .line 1157
    :goto_0
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1158
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1159
    if-eqz v0, :cond_0

    .line 1160
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1164
    :cond_0
    iget-object v0, p2, Lio/teak/sdk/TeakNotification;->display:Lio/teak/sdk/e/c;

    const-string v2, "displayContentViewAboveBigContentView"

    invoke-virtual {v0, v2, v1}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;Z)Z

    move-result v10

    .line 1201
    new-instance v1, Lio/teak/sdk/h;

    invoke-direct {v1, p0}, Lio/teak/sdk/h;-><init>(Landroid/content/Context;)V

    .line 1203
    invoke-static {p0}, Lio/teak/sdk/a;->e(Landroid/content/Context;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 1206
    new-instance v0, Landroid/text/SpannedString;

    iget-object v2, p2, Lio/teak/sdk/TeakNotification;->message:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 1208
    :try_start_0
    iget-object v2, p2, Lio/teak/sdk/TeakNotification;->message:Ljava/lang/String;

    .line 2149
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1216
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1217
    const/4 v2, -0x1

    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1218
    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1219
    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1221
    :try_start_1
    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1230
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

    .line 1231
    if-eqz v0, :cond_3

    .line 1232
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "io_teak_notification_accent_color"

    .line 2186
    iget-object v9, v1, Lio/teak/sdk/h;->a:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v11, "integer"

    iget-object v12, v1, Lio/teak/sdk/h;->a:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v5, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 2187
    if-nez v9, :cond_9

    .line 2188
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

    .line 1240
    :cond_3
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1241
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1242
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1251
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_a

    .line 1253
    :try_start_4
    const-string v0, "io_teak_small_notification_icon"

    invoke-virtual {v1, v0}, Lio/teak/sdk/h;->c(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v0

    .line 1260
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "io_teak_large_notification_icon"

    .line 1261
    invoke-virtual {v1, v4}, Lio/teak/sdk/h;->c(Ljava/lang/String;)I

    move-result v4

    .line 1260
    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v2

    .line 1265
    :goto_3
    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1266
    if-eqz v2, :cond_4

    .line 1267
    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1271
    :cond_4
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 1272
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v9, "io.teak.sdk.Teak"

    invoke-direct {v2, v4, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    new-instance v4, Lio/teak/sdk/i;

    invoke-direct {v4, p1, v2, p0, v0}, Lio/teak/sdk/i;-><init>(Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/content/Context;Ljava/util/Random;)V

    .line 1294
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

    .line 2287
    const/4 v2, 0x0

    invoke-virtual {v4, v0, v2}, Lio/teak/sdk/i;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1294
    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1297
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

    .line 3287
    const/4 v2, 0x0

    invoke-virtual {v4, v0, v2}, Lio/teak/sdk/i;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1297
    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 1307
    :cond_5
    :try_start_7
    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v9

    .line 1545
    new-instance v0, Lio/teak/sdk/j;

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lio/teak/sdk/j;-><init>(Lio/teak/sdk/h;Landroid/content/Context;Lio/teak/sdk/TeakNotification;Lio/teak/sdk/i;IILandroid/util/DisplayMetrics;)V

    .line 1554
    new-instance v2, Lio/teak/sdk/g;

    invoke-direct {v2, v9}, Lio/teak/sdk/g;-><init>(Landroid/app/Notification;)V

    .line 1555
    iget-object v3, p2, Lio/teak/sdk/TeakNotification;->display:Lio/teak/sdk/e/c;

    const-string v4, "contentView"

    invoke-virtual {v3, v4}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/teak/sdk/j;->a(Lio/teak/sdk/j;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-static {v2, v3}, Lio/teak/sdk/g;->a(Lio/teak/sdk/g;Landroid/widget/RemoteViews;)V

    .line 1559
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_6

    iget-object v2, p2, Lio/teak/sdk/TeakNotification;->display:Lio/teak/sdk/e/c;

    const-string v3, "bigContentView"

    invoke-virtual {v2, v3}, Lio/teak/sdk/e/c;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1561
    :try_start_8
    iget-object v2, p2, Lio/teak/sdk/TeakNotification;->display:Lio/teak/sdk/e/c;

    const-string v3, "bigContentView"

    invoke-virtual {v2, v3}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/teak/sdk/j;->b(Lio/teak/sdk/j;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v8

    .line 1564
    if-eqz v8, :cond_c

    if-eqz v10, :cond_c

    .line 1565
    iget-object v2, p2, Lio/teak/sdk/TeakNotification;->display:Lio/teak/sdk/e/c;

    const-string v3, "contentView"

    invoke-virtual {v2, v3}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/teak/sdk/j;->a(Lio/teak/sdk/j;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 1566
    const-string v2, "small_view_container"

    invoke-virtual {v1, v2}, Lio/teak/sdk/h;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1, v0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 1580
    :cond_6
    :goto_4
    if-eqz v8, :cond_7

    .line 1583
    :try_start_9
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "bigContentView"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1584
    invoke-virtual {v0, v9, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    :cond_7
    :goto_5
    move-object v8, v9

    .line 1589
    :goto_6
    return-object v8

    .line 1155
    :cond_8
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v6

    goto/16 :goto_0

    .line 1209
    :catch_1
    move-exception v2

    .line 1210
    const-string v4, "teakUnitTest"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1211
    throw v2

    .line 1222
    :catch_2
    move-exception v0

    .line 1223
    const-string v2, "teakUnitTest"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1224
    throw v0

    .line 2190
    :cond_9
    :try_start_a
    iget-object v5, v1, Lio/teak/sdk/h;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 1232
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_1

    .line 1244
    :catch_3
    move-exception v0

    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "notification_builder"

    const-string v2, "Unable to load app icon resource for Notification."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 1298
    :catch_6
    move-exception v0

    .line 1299
    const-string v2, "teakUnitTest"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1300
    throw v0

    .line 1308
    :catch_7
    move-exception v0

    .line 1309
    const-string v1, "teakUnitTest"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1310
    throw v0

    .line 1312
    :cond_b
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    .line 1313
    const v0, 0x7fffffff

    iput v0, v8, Landroid/app/Notification;->flags:I

    goto :goto_6

    .line 1567
    :cond_c
    if-eqz v8, :cond_6

    .line 1568
    :try_start_b
    const-string v0, "small_view_container"

    invoke-virtual {v1, v0}, Lio/teak/sdk/h;->a(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {v8, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_4

    .line 1570
    :catch_8
    move-exception v0

    .line 1571
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1572
    iget-object v2, p2, Lio/teak/sdk/TeakNotification;->teakCreativeName:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 1573
    const-string v2, "teakCreativeName"

    iget-object v3, p2, Lio/teak/sdk/TeakNotification;->teakCreativeName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    :cond_d
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v2, v0, v1}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;Ljava/util/Map;)V

    goto/16 :goto_4

    :catch_9
    move-exception v0

    goto/16 :goto_5
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1114
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1115
    sget-object v1, Lio/teak/sdk/a;->g:Ljava/lang/String;

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 1119
    :try_start_0
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "teak-no-sound-or-vibrate"

    const-string v3, "Notifications"

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 1120
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 1121
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 1122
    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 1123
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 1124
    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 1125
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1126
    const-string v0, "teak-no-sound-or-vibrate"

    sput-object v0, Lio/teak/sdk/a;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1130
    :cond_0
    :goto_0
    sget-object v0, Lio/teak/sdk/a;->g:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/g/b;
        }
    .end annotation

    .prologue
    .line 5028
    invoke-static {p0, p1}, Lio/teak/sdk/a;->a(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 5030
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 5031
    new-instance v0, Lio/teak/sdk/g/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to resolve intent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/teak/sdk/g/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5034
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 5035
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 5037
    if-eqz v0, :cond_1

    .line 5038
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5039
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 5042
    :cond_2
    return-void
.end method

.method private static c(Landroid/content/Context;)Lio/teak/sdk/h/c;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 91
    if-nez v0, :cond_0

    .line 92
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v2, "factory.istore"

    const-string v3, "Unable to get Package Manager."

    invoke-virtual {v0, v2, v3}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 124
    :goto_0
    return-object v0

    .line 96
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 97
    if-nez v2, :cond_1

    .line 98
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v2, "factory.istore"

    const-string v3, "Unable to get Bundle Id."

    invoke-virtual {v0, v2, v3}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 99
    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    const-class v2, Lio/teak/sdk/h/b;

    .line 106
    const-string v3, "com.amazon.venezia"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 108
    :try_start_0
    const-string v0, "com.amazon.device.iap.PurchasingListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 113
    :goto_1
    if-eqz v0, :cond_2

    .line 114
    const-class v0, Lio/teak/sdk/h/a;

    .line 119
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    :goto_3
    check-cast v0, Lio/teak/sdk/h/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    sget-object v3, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v3, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 119
    goto :goto_3

    .line 120
    :catch_1
    move-exception v0

    .line 121
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v2, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 124
    goto :goto_0

    :cond_4
    move-object v0, v2

    goto :goto_2
.end method

.method public static c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/g/b;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 5045
    .line 5047
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 5048
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 5050
    const-string v2, "io.teak.sdk.shortcutbadger.BADGE_COUNT_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5053
    :try_start_0
    invoke-static {p0, v1}, Lio/teak/sdk/a;->b(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Lio/teak/sdk/g/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 5054
    const/4 v0, 0x1

    .line 5060
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 5066
    :goto_1
    return-void

    .line 5065
    :cond_1
    invoke-static {p0, p1}, Lio/teak/sdk/a;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 5056
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Lio/teak/sdk/push/a;
    .locals 10
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e$b;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 129
    .line 132
    :try_start_0
    const-string v0, "com.amazon.device.messaging.ADM"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 133
    new-instance v0, Lcom/amazon/device/messaging/ADM;

    invoke-direct {v0, p0}, Lcom/amazon/device/messaging/ADM;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    new-instance v0, Lio/teak/sdk/push/ADMPushProvider;

    invoke-direct {v0}, Lio/teak/sdk/push/ADMPushProvider;-><init>()V

    .line 135
    invoke-virtual {v0, p0}, Lio/teak/sdk/push/ADMPushProvider;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :try_start_1
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

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

    invoke-virtual {v2, v3, v4}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :goto_0
    move-object v2, v0

    .line 142
    :goto_1
    if-nez v2, :cond_0

    .line 144
    :try_start_2
    const-string v0, "com.google.android.gms.common.GooglePlayServicesUtil"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 146
    :try_start_3
    invoke-static {p0}, Lio/teak/sdk/push/FCMPushProvider;->a(Landroid/content/Context;)Lio/teak/sdk/push/FCMPushProvider;
    :try_end_3
    .catch Lio/teak/sdk/e$b; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v2

    .line 147
    :try_start_4
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v3, "factory.pushProvider"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "type"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "fcm"

    aput-object v6, v4, v5

    invoke-static {v4}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_4
    .catch Lio/teak/sdk/e$b; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 155
    :cond_0
    :goto_2
    if-nez v2, :cond_1

    .line 156
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v3, "factory.pushProvider"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "type"

    aput-object v5, v4, v7

    const-string v5, "none"

    aput-object v5, v4, v8

    invoke-static {v4}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 157
    if-eqz v1, :cond_1

    .line 158
    throw v1

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_3
    move-object v2, v0

    goto :goto_1

    .line 148
    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_4
    move-object v2, v1

    move-object v1, v0

    .line 152
    goto :goto_2

    .line 161
    :cond_1
    return-object v2

    :catch_2
    move-exception v0

    goto :goto_2

    .line 148
    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_4
    move-exception v2

    goto :goto_3

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 3

    .prologue
    .line 1134
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {p0}, Lio/teak/sdk/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1135
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1138
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_0

    .line 1140
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1144
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Lio/teak/sdk/h/c;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lio/teak/sdk/a;->b:Lio/teak/sdk/h/c;

    return-object v0
.end method

.method public final b()Lio/teak/sdk/d/f;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lio/teak/sdk/a;->a:Lio/teak/sdk/d/f;

    return-object v0
.end method

.method public final c()Lio/teak/sdk/d/e;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lio/teak/sdk/a;->c:Lio/teak/sdk/d/e;

    return-object v0
.end method

.method public final d()Lio/teak/sdk/push/a;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lio/teak/sdk/a;->d:Lio/teak/sdk/push/a;

    return-object v0
.end method

.method public final e()Lio/teak/sdk/b/c;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lio/teak/sdk/a;->e:Lio/teak/sdk/b/c;

    return-object v0
.end method
