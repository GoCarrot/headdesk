.class final Lio/teak/sdk/a/d$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/k$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/a/d$1;->a(Lio/teak/sdk/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/m;


# direct methods
.method constructor <init>(Lio/teak/sdk/a/d$1;Lio/teak/sdk/m;)V
    .locals 0

    .prologue
    .line 75
    iput-object p2, p0, Lio/teak/sdk/a/d$1$1;->a:Lio/teak/sdk/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 79
    :try_start_0
    new-instance v8, Lio/teak/sdk/e/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "{}"

    :cond_1
    invoke-direct {v8, p1}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/String;)V

    .line 81
    new-instance v0, Lio/teak/sdk/a/d;

    iget-object v1, p0, Lio/teak/sdk/a/d$1$1;->a:Lio/teak/sdk/m;

    iget-object v1, v1, Lio/teak/sdk/m;->b:Lio/teak/sdk/a/a;

    const-string v2, "auth"

    .line 82
    invoke-virtual {v8, v2}, Lio/teak/sdk/e/c;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "gocarrot.com"

    :goto_0
    const-string v3, "sdk_sentry_dsn"

    .line 83
    invoke-virtual {v8, v3}, Lio/teak/sdk/e/c;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v7

    :goto_1
    invoke-static {v3}, Lio/teak/sdk/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_sentry_dsn"

    .line 84
    invoke-virtual {v8, v4}, Lio/teak/sdk/e/c;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v7

    :goto_2
    invoke-static {v4}, Lio/teak/sdk/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "gcm_sender_id"

    .line 85
    invoke-virtual {v8, v5}, Lio/teak/sdk/e/c;->f(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v5, v7

    :goto_3
    invoke-static {v5}, Lio/teak/sdk/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "enhanced_integration_checks"

    const/4 v9, 0x0

    .line 86
    invoke-virtual {v8, v6, v9}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;Z)Z

    move-result v6

    const-string v9, "endpoint_configurations"

    .line 87
    invoke-virtual {v8, v9}, Lio/teak/sdk/e/c;->e(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v7, "endpoint_configurations"

    invoke-virtual {v8, v7}, Lio/teak/sdk/e/c;->c(Ljava/lang/String;)Lio/teak/sdk/e/c;

    move-result-object v7

    :cond_2
    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lio/teak/sdk/a/d;-><init>(Lio/teak/sdk/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLio/teak/sdk/e/c;B)V

    .line 89
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v2, "configuration.remote"

    invoke-static {v0}, Lio/teak/sdk/a/d;->a(Lio/teak/sdk/a/d;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 90
    new-instance v1, Lio/teak/sdk/c/l;

    invoke-direct {v1, v0}, Lio/teak/sdk/c/l;-><init>(Lio/teak/sdk/a/d;)V

    invoke-static {v1}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n;)Z

    .line 94
    :goto_4
    return-void

    .line 82
    :cond_3
    const-string v2, "auth"

    invoke-virtual {v8, v2}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 83
    :cond_4
    const-string v3, "sdk_sentry_dsn"

    invoke-virtual {v8, v3}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 84
    :cond_5
    const-string v4, "app_sentry_dsn"

    invoke-virtual {v8, v4}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 85
    :cond_6
    const-string v5, "gcm_sender_id"

    invoke-virtual {v8, v5}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_3

    .line 91
    :catch_0
    move-exception v0

    .line 92
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    goto :goto_4
.end method
