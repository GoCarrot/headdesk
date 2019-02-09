.class public final Lio/teak/sdk/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/teak/sdk/d/f;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/teak/sdk/d/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    .line 36
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 37
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    const-string v1, "io_teak_enable_idfa"

    invoke-static {v1, p2, v0}, Lio/teak/sdk/a/b;->a(Ljava/lang/String;Lio/teak/sdk/d/f;Landroid/os/Bundle;)Z

    move-result v1

    iput-boolean v1, p0, Lio/teak/sdk/a/b;->a:Z

    .line 45
    const-string v1, "io_teak_enable_facebook"

    invoke-static {v1, p2, v0}, Lio/teak/sdk/a/b;->a(Ljava/lang/String;Lio/teak/sdk/d/f;Landroid/os/Bundle;)Z

    move-result v1

    iput-boolean v1, p0, Lio/teak/sdk/a/b;->b:Z

    .line 48
    const-string v1, "io_teak_enable_push_key"

    invoke-static {v1, p2, v0}, Lio/teak/sdk/a/b;->a(Ljava/lang/String;Lio/teak/sdk/d/f;Landroid/os/Bundle;)Z

    move-result v0

    iput-boolean v0, p0, Lio/teak/sdk/a/b;->c:Z

    .line 51
    new-instance v0, Lio/teak/sdk/a/b$1;

    invoke-direct {v0, p0}, Lio/teak/sdk/a/b$1;-><init>(Lio/teak/sdk/a/b;)V

    invoke-static {v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o$a;)V

    .line 61
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lio/teak/sdk/a/b;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lio/teak/sdk/a/b;->a:Z

    return v0
.end method

.method static synthetic a(Lio/teak/sdk/a/b;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lio/teak/sdk/a/b;->a:Z

    return p1
.end method

.method private static a(Ljava/lang/String;Lio/teak/sdk/d/f;Landroid/os/Bundle;)Z
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/teak/sdk/d/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 64
    invoke-interface {p1, p0}, Lio/teak/sdk/d/f;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 65
    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p2, p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 68
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    const-string v1, "enableIDFA"

    iget-boolean v2, p0, Lio/teak/sdk/a/b;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "enableFacebookAccessToken"

    iget-boolean v2, p0, Lio/teak/sdk/a/b;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "enablePushKey"

    iget-boolean v2, p0, Lio/teak/sdk/a/b;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-object v0
.end method

.method public final a(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    iget-boolean v3, p0, Lio/teak/sdk/a/b;->c:Z

    const-string v0, "opt_out_push_key"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    and-int/2addr v0, v3

    iput-boolean v0, p0, Lio/teak/sdk/a/b;->c:Z

    .line 75
    iget-boolean v3, p0, Lio/teak/sdk/a/b;->a:Z

    const-string v0, "opt_out_idfa"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    and-int/2addr v0, v3

    iput-boolean v0, p0, Lio/teak/sdk/a/b;->a:Z

    .line 76
    iget-boolean v0, p0, Lio/teak/sdk/a/b;->b:Z

    const-string v3, "opt_out_facebook"

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    and-int/2addr v0, v1

    iput-boolean v0, p0, Lio/teak/sdk/a/b;->b:Z

    .line 77
    return-void

    :cond_0
    move v0, v2

    .line 74
    goto :goto_0

    :cond_1
    move v0, v2

    .line 75
    goto :goto_1

    :cond_2
    move v1, v2

    .line 76
    goto :goto_2
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lio/teak/sdk/a/b;->a:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lio/teak/sdk/a/b;->b:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lio/teak/sdk/a/b;->c:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 90
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lio/teak/sdk/e/c;

    invoke-virtual {p0}, Lio/teak/sdk/a/b;->a()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    invoke-static {v4}, Lio/teak/sdk/Teak;->formatJSONForLogging(Lio/teak/sdk/e/c;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
