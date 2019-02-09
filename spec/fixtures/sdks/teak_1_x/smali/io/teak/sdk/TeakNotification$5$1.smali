.class final Lio/teak/sdk/TeakNotification$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/k$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/TeakNotification$5;->a(Lio/teak/sdk/b/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/TeakNotification$5;


# direct methods
.method constructor <init>(Lio/teak/sdk/TeakNotification$5;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lio/teak/sdk/TeakNotification$5$1;->a:Lio/teak/sdk/TeakNotification$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 517
    :try_start_0
    new-instance v0, Lio/teak/sdk/e/c;

    invoke-direct {v0, p1}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/String;)V

    .line 519
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 520
    const-string v1, "status"

    const-string v2, "status"

    invoke-virtual {v0, v2}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 523
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 524
    const-string v1, "canceled"

    .line 1701
    invoke-virtual {v0, v1}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1702
    instance-of v2, v0, Lio/teak/sdk/e/a;

    if-eqz v2, :cond_0

    .line 1703
    check-cast v0, Lio/teak/sdk/e/a;

    .line 525
    if-eqz v0, :cond_3

    move v2, v3

    .line 526
    :goto_0
    invoke-virtual {v0}, Lio/teak/sdk/e/a;->a()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 3216
    invoke-virtual {v0, v2}, Lio/teak/sdk/e/a;->a(I)Ljava/lang/Object;

    move-result-object v1

    .line 3217
    if-nez v1, :cond_1

    .line 3218
    new-instance v0, Lio/teak/sdk/e/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "JSONArray["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/teak/sdk/e/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    :catch_0
    move-exception v0

    .line 537
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 538
    const-string v2, "status"

    const-string v4, "error.internal"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    iget-object v2, p0, Lio/teak/sdk/TeakNotification$5$1;->a:Lio/teak/sdk/TeakNotification$5;

    iget-object v2, v2, Lio/teak/sdk/TeakNotification$5;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v4, Lio/teak/sdk/e/c;

    invoke-direct {v4, v1}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4}, Lio/teak/sdk/e/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 540
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    new-array v2, v10, [Ljava/lang/Object;

    const-string v4, "responseBody"

    aput-object v4, v2, v3

    aput-object p1, v2, v9

    invoke-static {v2}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 542
    :goto_1
    iget-object v0, p0, Lio/teak/sdk/TeakNotification$5$1;->a:Lio/teak/sdk/TeakNotification$5;

    iget-object v0, v0, Lio/teak/sdk/TeakNotification$5;->b:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 543
    return-void

    .line 1705
    :cond_0
    :try_start_1
    new-instance v0, Lio/teak/sdk/e/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "JSONObject["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lio/teak/sdk/e/c;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not a JSONArray."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/teak/sdk/e/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2422
    :cond_1
    instance-of v6, v1, Lio/teak/sdk/e/c;

    if-eqz v6, :cond_2

    .line 2423
    check-cast v1, Lio/teak/sdk/e/c;

    .line 527
    invoke-virtual {v1}, Lio/teak/sdk/e/c;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_0

    .line 2425
    :cond_2
    new-instance v0, Lio/teak/sdk/e/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "JSONArray["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not a JSONObject."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/teak/sdk/e/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_3
    const-string v0, "data"

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "notification.cancel_all"

    const-string v2, "Canceled all notifications."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    :goto_2
    iget-object v0, p0, Lio/teak/sdk/TeakNotification$5$1;->a:Lio/teak/sdk/TeakNotification$5;

    iget-object v0, v0, Lio/teak/sdk/TeakNotification$5;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v1, Lio/teak/sdk/e/c;

    invoke-direct {v1, v4}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lio/teak/sdk/e/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    .line 533
    :cond_4
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v2, "notification.cancel_all.error"

    const-string v5, "Error canceling all notifications."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "response"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0}, Lio/teak/sdk/e/c;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v6}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v5, v0}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
