.class final Lio/teak/sdk/b/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/util/concurrent/Future;

.field private synthetic b:Ljava/util/HashMap;

.field private synthetic c:Landroid/os/Bundle;

.field private synthetic d:Lio/teak/sdk/b/e;


# direct methods
.method constructor <init>(Lio/teak/sdk/b/e;Ljava/util/concurrent/Future;Ljava/util/HashMap;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lio/teak/sdk/b/e$3;->d:Lio/teak/sdk/b/e;

    iput-object p2, p0, Lio/teak/sdk/b/e$3;->a:Ljava/util/concurrent/Future;

    iput-object p3, p0, Lio/teak/sdk/b/e$3;->b:Ljava/util/HashMap;

    iput-object p4, p0, Lio/teak/sdk/b/e$3;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 307
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/b/e$3;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/TeakNotification$a;

    .line 308
    new-instance v1, Ljava/util/HashMap;

    iget-object v0, v0, Lio/teak/sdk/TeakNotification$a;->a:Lio/teak/sdk/e/c;

    invoke-virtual {v0}, Lio/teak/sdk/e/c;->b()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 309
    iget-object v0, p0, Lio/teak/sdk/b/e$3;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 312
    new-instance v0, Landroid/content/Intent;

    const-string v1, "io.teak.sdk.Teak.intent.REWARD_CLAIM_ATTEMPT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    const-string v1, "reward"

    iget-object v2, p0, Lio/teak/sdk/b/e$3;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 314
    iget-object v1, p0, Lio/teak/sdk/b/e$3;->d:Lio/teak/sdk/b/e;

    invoke-static {v1, v0}, Lio/teak/sdk/b/e;->a(Lio/teak/sdk/b/e;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    new-instance v0, Landroid/content/Intent;

    const-string v1, "io.teak.sdk.Teak.intent.LAUNCHED_FROM_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lio/teak/sdk/b/e$3;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 320
    const-string v1, "eventData"

    iget-object v2, p0, Lio/teak/sdk/b/e$3;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 321
    iget-object v1, p0, Lio/teak/sdk/b/e$3;->d:Lio/teak/sdk/b/e;

    invoke-static {v1, v0}, Lio/teak/sdk/b/e;->a(Lio/teak/sdk/b/e;Landroid/content/Intent;)V

    .line 322
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    :try_start_1
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    new-instance v0, Landroid/content/Intent;

    const-string v1, "io.teak.sdk.Teak.intent.LAUNCHED_FROM_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lio/teak/sdk/b/e$3;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 320
    const-string v1, "eventData"

    iget-object v2, p0, Lio/teak/sdk/b/e$3;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 321
    iget-object v1, p0, Lio/teak/sdk/b/e$3;->d:Lio/teak/sdk/b/e;

    invoke-static {v1, v0}, Lio/teak/sdk/b/e;->a(Lio/teak/sdk/b/e;Landroid/content/Intent;)V

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "io.teak.sdk.Teak.intent.LAUNCHED_FROM_NOTIFICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    iget-object v2, p0, Lio/teak/sdk/b/e$3;->c:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 320
    const-string v2, "eventData"

    iget-object v3, p0, Lio/teak/sdk/b/e$3;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 321
    iget-object v2, p0, Lio/teak/sdk/b/e$3;->d:Lio/teak/sdk/b/e;

    invoke-static {v2, v1}, Lio/teak/sdk/b/e;->a(Lio/teak/sdk/b/e;Landroid/content/Intent;)V

    .line 322
    throw v0
.end method
