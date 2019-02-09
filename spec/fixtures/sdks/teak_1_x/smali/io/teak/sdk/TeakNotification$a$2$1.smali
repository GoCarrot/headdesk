.class final Lio/teak/sdk/TeakNotification$a$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/k$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/TeakNotification$a$2;->a(Lio/teak/sdk/b/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/TeakNotification$a$2;


# direct methods
.method constructor <init>(Lio/teak/sdk/TeakNotification$a$2;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lio/teak/sdk/TeakNotification$a$2$1;->a:Lio/teak/sdk/TeakNotification$a$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 237
    :try_start_0
    new-instance v0, Lio/teak/sdk/e/c;

    invoke-direct {v0, p1}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/String;)V

    .line 238
    const-string v1, "response"

    invoke-virtual {v0, v1}, Lio/teak/sdk/e/c;->h(Ljava/lang/String;)Lio/teak/sdk/e/c;

    move-result-object v1

    .line 240
    new-instance v2, Lio/teak/sdk/e/c;

    invoke-direct {v2}, Lio/teak/sdk/e/c;-><init>()V

    .line 241
    const-string v3, "teakRewardId"

    iget-object v4, p0, Lio/teak/sdk/TeakNotification$a$2$1;->a:Lio/teak/sdk/TeakNotification$a$2;

    iget-object v4, v4, Lio/teak/sdk/TeakNotification$a$2;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lio/teak/sdk/e/c;

    .line 242
    const-string v3, "status"

    const-string v4, "status"

    invoke-virtual {v1, v4}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lio/teak/sdk/e/c;

    .line 243
    const-string v3, "reward"

    invoke-virtual {v1, v3}, Lio/teak/sdk/e/c;->h(Ljava/lang/String;)Lio/teak/sdk/e/c;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 244
    const-string v3, "reward"

    const-string v4, "reward"

    invoke-virtual {v1, v4}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lio/teak/sdk/e/c;

    .line 248
    :cond_0
    :goto_0
    new-instance v1, Lio/teak/sdk/TeakNotification$a;

    invoke-direct {v1, v2}, Lio/teak/sdk/TeakNotification$a;-><init>(Lio/teak/sdk/e/c;)V

    .line 250
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v3, "reward.claim.response"

    invoke-virtual {v0}, Lio/teak/sdk/e/c;->b()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 252
    iget-object v0, p0, Lio/teak/sdk/TeakNotification$a$2$1;->a:Lio/teak/sdk/TeakNotification$a$2;

    iget-object v0, v0, Lio/teak/sdk/TeakNotification$a$2;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 257
    :goto_1
    return-void

    .line 245
    :cond_1
    const-string v3, "reward"

    invoke-virtual {v1, v3}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 246
    const-string v3, "reward"

    new-instance v4, Lio/teak/sdk/e/c;

    const-string v5, "reward"

    invoke-virtual {v1, v5}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lio/teak/sdk/e/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    .line 255
    iget-object v0, p0, Lio/teak/sdk/TeakNotification$a$2$1;->a:Lio/teak/sdk/TeakNotification$a$2;

    iget-object v0, v0, Lio/teak/sdk/TeakNotification$a$2;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_1
.end method
