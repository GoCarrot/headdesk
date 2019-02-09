.class final Lio/teak/sdk/a/e$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/l$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/a/e$1;->a(Lio/teak/sdk/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/n;


# direct methods
.method constructor <init>(Lio/teak/sdk/a/e$1;Lio/teak/sdk/n;)V
    .locals 0

    .prologue
    .line 64
    iput-object p2, p0, Lio/teak/sdk/a/e$1$1;->a:Lio/teak/sdk/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 68
    :try_start_0
    new-instance v9, Lio/teak/sdk/e/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "{}"

    :cond_1
    invoke-direct {v9, p1}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/String;)V

    .line 70
    new-instance v0, Lio/teak/sdk/a/e;

    iget-object v1, p0, Lio/teak/sdk/a/e$1$1;->a:Lio/teak/sdk/n;

    iget-object v1, v1, Lio/teak/sdk/n;->b:Lio/teak/sdk/a/a;

    const-string v2, "auth"

    .line 71
    invoke-virtual {v9, v2}, Lio/teak/sdk/e/c;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "gocarrot.com"

    :goto_0
    const-string v3, "sdk_sentry_dsn"

    .line 72
    invoke-virtual {v9, v3}, Lio/teak/sdk/e/c;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v8

    :goto_1
    invoke-static {v3}, Lio/teak/sdk/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_sentry_dsn"

    .line 73
    invoke-virtual {v9, v4}, Lio/teak/sdk/e/c;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v8

    :goto_2
    invoke-static {v4}, Lio/teak/sdk/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "gcm_sender_id"

    .line 74
    invoke-virtual {v9, v5}, Lio/teak/sdk/e/c;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v5, v8

    :goto_3
    invoke-static {v5}, Lio/teak/sdk/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "firebase_app_id"

    .line 75
    invoke-virtual {v9, v6}, Lio/teak/sdk/e/c;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v6, v8

    :goto_4
    invoke-static {v6}, Lio/teak/sdk/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "enhanced_integration_checks"

    const/4 v10, 0x0

    .line 76
    invoke-virtual {v9, v7, v10}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;Z)Z

    move-result v7

    const-string v10, "endpoint_configurations"

    .line 77
    invoke-virtual {v9, v10}, Lio/teak/sdk/e/c;->h(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v8, "endpoint_configurations"

    invoke-virtual {v9, v8}, Lio/teak/sdk/e/c;->e(Ljava/lang/String;)Lio/teak/sdk/e/c;

    move-result-object v8

    :cond_2
    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lio/teak/sdk/a/e;-><init>(Lio/teak/sdk/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLio/teak/sdk/e/c;B)V

    .line 79
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v2, "configuration.remote"

    invoke-static {v0}, Lio/teak/sdk/a/e;->a(Lio/teak/sdk/a/e;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 80
    new-instance v1, Lio/teak/sdk/c/l;

    invoke-direct {v1, v0}, Lio/teak/sdk/c/l;-><init>(Lio/teak/sdk/a/e;)V

    invoke-static {v1}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;)Z

    .line 84
    :goto_5
    return-void

    .line 71
    :cond_3
    const-string v2, "auth"

    invoke-virtual {v9, v2}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 72
    :cond_4
    const-string v3, "sdk_sentry_dsn"

    invoke-virtual {v9, v3}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 73
    :cond_5
    const-string v4, "app_sentry_dsn"

    invoke-virtual {v9, v4}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 74
    :cond_6
    const-string v5, "gcm_sender_id"

    invoke-virtual {v9, v5}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 75
    :cond_7
    const-string v6, "firebase_app_id"

    invoke-virtual {v9, v6}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_4

    .line 81
    :catch_0
    move-exception v0

    .line 82
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v1, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    goto :goto_5
.end method
