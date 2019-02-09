.class final Lio/teak/sdk/TeakNotification$a$2;
.super Lio/teak/sdk/b/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/TeakNotification$a;->a(Ljava/lang/String;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/concurrent/ArrayBlockingQueue;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/concurrent/ArrayBlockingQueue;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lio/teak/sdk/TeakNotification$a$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/teak/sdk/TeakNotification$a$2;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {p0}, Lio/teak/sdk/b/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/b/e;)V
    .locals 5

    .prologue
    .line 207
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "reward.claim.request"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "teakRewardId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lio/teak/sdk/TeakNotification$a$2;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 212
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 213
    const-string v1, "clicking_user_id"

    invoke-virtual {p1}, Lio/teak/sdk/b/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v1, "rewards.gocarrot.com"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/teak/sdk/TeakNotification$a$2;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/clicks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lio/teak/sdk/TeakNotification$a$2$1;

    invoke-direct {v3, p0}, Lio/teak/sdk/TeakNotification$a$2$1;-><init>(Lio/teak/sdk/TeakNotification$a$2;)V

    invoke-static {v1, v2, v0, p1, v3}, Lio/teak/sdk/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/e;Lio/teak/sdk/l$e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v1, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    .line 247
    iget-object v0, p0, Lio/teak/sdk/TeakNotification$a$2;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method
