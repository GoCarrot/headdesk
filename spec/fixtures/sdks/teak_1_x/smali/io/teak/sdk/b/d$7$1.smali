.class final Lio/teak/sdk/b/d$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/k$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/b/d$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/b/d$7;


# direct methods
.method constructor <init>(Lio/teak/sdk/b/d$7;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lio/teak/sdk/b/d$7$1;->a:Lio/teak/sdk/b/d$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 412
    iget-object v0, p0, Lio/teak/sdk/b/d$7$1;->a:Lio/teak/sdk/b/d$7;

    iget-object v0, v0, Lio/teak/sdk/b/d$7;->b:Lio/teak/sdk/b/d;

    invoke-static {v0}, Lio/teak/sdk/b/d;->d(Lio/teak/sdk/b/d;)Lio/teak/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->lock()V

    .line 414
    :try_start_0
    new-instance v0, Lio/teak/sdk/e/c;

    invoke-direct {v0, p1}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/String;)V

    .line 419
    const-string v1, "verbose_logging"

    .line 2012
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 420
    const-string v2, "log_remote"

    .line 3012
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 421
    iget-object v3, p0, Lio/teak/sdk/b/d$7$1;->a:Lio/teak/sdk/b/d$7;

    iget-object v3, v3, Lio/teak/sdk/b/d$7;->a:Lio/teak/sdk/m;

    iget-object v3, v3, Lio/teak/sdk/m;->a:Lio/teak/sdk/a/b;

    invoke-virtual {v3, v1, v2}, Lio/teak/sdk/a/b;->a(ZZ)V

    .line 424
    const-string v1, "reset_push_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lio/teak/sdk/b/d$7$1;->a:Lio/teak/sdk/b/d$7;

    iget-object v1, v1, Lio/teak/sdk/b/d$7;->a:Lio/teak/sdk/m;

    iget-object v1, v1, Lio/teak/sdk/m;->c:Lio/teak/sdk/a/c;

    invoke-virtual {v1}, Lio/teak/sdk/a/c;->a()V

    .line 428
    :cond_0
    const-string v1, "country_code"

    invoke-virtual {v0, v1}, Lio/teak/sdk/e/c;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    iget-object v1, p0, Lio/teak/sdk/b/d$7$1;->a:Lio/teak/sdk/b/d$7;

    iget-object v1, v1, Lio/teak/sdk/b/d$7;->b:Lio/teak/sdk/b/d;

    const-string v2, "country_code"

    invoke-virtual {v0, v2}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/teak/sdk/b/d;->a(Lio/teak/sdk/b/d;Ljava/lang/String;)Ljava/lang/String;

    .line 433
    :cond_1
    iget-object v1, p0, Lio/teak/sdk/b/d$7$1;->a:Lio/teak/sdk/b/d$7;

    iget-object v1, v1, Lio/teak/sdk/b/d$7;->b:Lio/teak/sdk/b/d;

    invoke-static {v1}, Lio/teak/sdk/b/d;->e(Lio/teak/sdk/b/d;)Lio/teak/sdk/b/d$b;

    move-result-object v1

    sget-object v2, Lio/teak/sdk/b/d$b;->g:Lio/teak/sdk/b/d$b;

    if-ne v1, v2, :cond_4

    .line 434
    iget-object v1, p0, Lio/teak/sdk/b/d$7$1;->a:Lio/teak/sdk/b/d$7;

    iget-object v1, v1, Lio/teak/sdk/b/d$7;->b:Lio/teak/sdk/b/d;

    sget-object v2, Lio/teak/sdk/b/d$b;->f:Lio/teak/sdk/b/d$b;

    invoke-static {v1, v2}, Lio/teak/sdk/b/d;->b(Lio/teak/sdk/b/d;Lio/teak/sdk/b/d$b;)Lio/teak/sdk/b/d$b;

    .line 440
    :cond_2
    :goto_0
    const-string v1, "user_profile"

    invoke-virtual {v0, v1}, Lio/teak/sdk/e/c;->h(Ljava/lang/String;)Lio/teak/sdk/e/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 441
    if-eqz v0, :cond_3

    .line 443
    :try_start_1
    iget-object v1, p0, Lio/teak/sdk/b/d$7$1;->a:Lio/teak/sdk/b/d$7;

    iget-object v1, v1, Lio/teak/sdk/b/d$7;->b:Lio/teak/sdk/b/d;

    new-instance v2, Lio/teak/sdk/b/f;

    iget-object v3, p0, Lio/teak/sdk/b/d$7$1;->a:Lio/teak/sdk/b/d$7;

    iget-object v3, v3, Lio/teak/sdk/b/d$7;->b:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/e/c;->b()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lio/teak/sdk/b/f;-><init>(Lio/teak/sdk/b/d;Ljava/util/Map;)V

    iput-object v2, v1, Lio/teak/sdk/b/d;->b:Lio/teak/sdk/b/f;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    :cond_3
    :goto_1
    iget-object v0, p0, Lio/teak/sdk/b/d$7$1;->a:Lio/teak/sdk/b/d$7;

    iget-object v0, v0, Lio/teak/sdk/b/d$7;->b:Lio/teak/sdk/b/d;

    invoke-static {v0}, Lio/teak/sdk/b/d;->d(Lio/teak/sdk/b/d;)Lio/teak/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->unlock()V

    .line 450
    :goto_2
    return-void

    .line 435
    :cond_4
    :try_start_2
    iget-object v1, p0, Lio/teak/sdk/b/d$7$1;->a:Lio/teak/sdk/b/d$7;

    iget-object v1, v1, Lio/teak/sdk/b/d$7;->b:Lio/teak/sdk/b/d;

    invoke-static {v1}, Lio/teak/sdk/b/d;->e(Lio/teak/sdk/b/d;)Lio/teak/sdk/b/d$b;

    move-result-object v1

    sget-object v2, Lio/teak/sdk/b/d$b;->f:Lio/teak/sdk/b/d$b;

    if-eq v1, v2, :cond_2

    .line 436
    iget-object v1, p0, Lio/teak/sdk/b/d$7$1;->a:Lio/teak/sdk/b/d$7;

    iget-object v1, v1, Lio/teak/sdk/b/d$7;->b:Lio/teak/sdk/b/d;

    sget-object v2, Lio/teak/sdk/b/d$b;->f:Lio/teak/sdk/b/d$b;

    invoke-static {v1, v2}, Lio/teak/sdk/b/d;->a(Lio/teak/sdk/b/d;Lio/teak/sdk/b/d$b;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    iget-object v0, p0, Lio/teak/sdk/b/d$7$1;->a:Lio/teak/sdk/b/d$7;

    iget-object v0, v0, Lio/teak/sdk/b/d$7;->b:Lio/teak/sdk/b/d;

    invoke-static {v0}, Lio/teak/sdk/b/d;->d(Lio/teak/sdk/b/d;)Lio/teak/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/teak/sdk/b/d$7$1;->a:Lio/teak/sdk/b/d$7;

    iget-object v1, v1, Lio/teak/sdk/b/d$7;->b:Lio/teak/sdk/b/d;

    invoke-static {v1}, Lio/teak/sdk/b/d;->d(Lio/teak/sdk/b/d;)Lio/teak/sdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lio/teak/sdk/b/c;->unlock()V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
