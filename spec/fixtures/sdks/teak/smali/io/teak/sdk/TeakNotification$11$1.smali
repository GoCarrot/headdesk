.class final Lio/teak/sdk/TeakNotification$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/l$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/TeakNotification$11;->a(Lio/teak/sdk/b/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/TeakNotification$11;


# direct methods
.method constructor <init>(Lio/teak/sdk/TeakNotification$11;)V
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lio/teak/sdk/TeakNotification$11$1;->a:Lio/teak/sdk/TeakNotification$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 656
    :try_start_0
    new-instance v0, Lio/teak/sdk/e/c;

    invoke-direct {v0, p1}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/String;)V

    .line 658
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 659
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lio/teak/sdk/e/c;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 660
    const-string v1, "status"

    const-string v4, "status"

    invoke-virtual {v0, v4}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "ok"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 663
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 664
    const-string v1, "canceled"

    invoke-virtual {v0, v1}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Lio/teak/sdk/e/a;

    move-result-object v5

    .line 665
    if-eqz v5, :cond_2

    move v1, v2

    .line 666
    :goto_0
    invoke-virtual {v5}, Lio/teak/sdk/e/a;->a()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 2216
    invoke-virtual {v5, v1}, Lio/teak/sdk/e/a;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 2217
    if-nez v0, :cond_0

    .line 2218
    new-instance v0, Lio/teak/sdk/e/b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSONArray["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] not found."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/teak/sdk/e/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lio/teak/sdk/e/b; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 681
    :catch_0
    move-exception v0

    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "notification.cancel.error"

    const-string v2, "Timed out while canceling all notifications."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 683
    const-string v1, "status"

    const-string v2, "error.internal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    iget-object v1, p0, Lio/teak/sdk/TeakNotification$11$1;->a:Lio/teak/sdk/TeakNotification$11;

    iget-object v1, v1, Lio/teak/sdk/TeakNotification$11;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v2, Lio/teak/sdk/e/c;

    invoke-direct {v2, v0}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lio/teak/sdk/e/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 691
    :goto_1
    iget-object v0, p0, Lio/teak/sdk/TeakNotification$11$1;->a:Lio/teak/sdk/TeakNotification$11;

    iget-object v0, v0, Lio/teak/sdk/TeakNotification$11;->b:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 692
    return-void

    .line 1422
    :cond_0
    :try_start_1
    instance-of v6, v0, Lio/teak/sdk/e/c;

    if-eqz v6, :cond_1

    .line 1423
    check-cast v0, Lio/teak/sdk/e/c;

    .line 667
    invoke-virtual {v0}, Lio/teak/sdk/e/c;->b()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1425
    :cond_1
    new-instance v0, Lio/teak/sdk/e/b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSONArray["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] is not a JSONObject."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/teak/sdk/e/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lio/teak/sdk/e/b; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 685
    :catch_1
    move-exception v0

    .line 686
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 687
    const-string v3, "status"

    const-string v4, "error.internal"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    iget-object v3, p0, Lio/teak/sdk/TeakNotification$11$1;->a:Lio/teak/sdk/TeakNotification$11;

    iget-object v3, v3, Lio/teak/sdk/TeakNotification$11;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v4, Lio/teak/sdk/e/c;

    invoke-direct {v4, v1}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4}, Lio/teak/sdk/e/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 689
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "responseBody"

    aput-object v4, v3, v2

    aput-object p1, v3, v9

    invoke-static {v3}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;Ljava/util/Map;)V

    goto :goto_1

    .line 670
    :cond_2
    :try_start_2
    const-string v0, "data"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "notification.cancel_all"

    const-string v4, "Canceled all notifications."

    invoke-virtual {v0, v1, v4}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :goto_2
    iget-object v0, p0, Lio/teak/sdk/TeakNotification$11$1;->a:Lio/teak/sdk/TeakNotification$11;

    iget-object v0, v0, Lio/teak/sdk/TeakNotification$11;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v1, Lio/teak/sdk/e/c;

    invoke-direct {v1, v3}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lio/teak/sdk/e/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 673
    :cond_3
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v4, "notification.cancel_all.error"

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

    invoke-virtual {v1, v4, v5, v0}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 676
    :cond_4
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "notification.cancel.error"

    const-string v4, "Timed out while canceling all notifications."

    invoke-virtual {v0, v1, v4}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string v0, "status"

    const-string v1, "error.internal"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lio/teak/sdk/e/b; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method
