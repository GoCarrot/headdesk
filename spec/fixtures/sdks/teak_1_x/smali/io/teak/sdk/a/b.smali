.class public final Lio/teak/sdk/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private b:Z

.field private c:Z

.field private final d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    :try_start_0
    const-string v0, "io.teak.sdk.Preferences"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 41
    iput-object v0, p0, Lio/teak/sdk/a/b;->a:Landroid/content/SharedPreferences;

    .line 44
    :goto_0
    iget-object v0, p0, Lio/teak/sdk/a/b;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_3

    .line 45
    sget-boolean v0, Lio/teak/sdk/Teak;->forceDebug:Z

    iput-boolean v0, p0, Lio/teak/sdk/a/b;->c:Z

    iput-boolean v0, p0, Lio/teak/sdk/a/b;->b:Z

    .line 53
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_8

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    move v0, v2

    .line 57
    :goto_2
    iput-boolean v0, p0, Lio/teak/sdk/a/b;->d:Z

    .line 62
    sget-object v3, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    iget-boolean v0, p0, Lio/teak/sdk/a/b;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/teak/sdk/a/b;->d:Z

    if-eqz v0, :cond_9

    :cond_0
    move v0, v2

    :goto_3
    iget-boolean v4, p0, Lio/teak/sdk/a/b;->b:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lio/teak/sdk/a/b;->d:Z

    if-eqz v4, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-virtual {v3, v0, v1}, Lio/teak/sdk/e;->a(ZZ)V

    .line 63
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    iget-boolean v1, p0, Lio/teak/sdk/a/b;->d:Z

    invoke-virtual {v0, v1}, Lio/teak/sdk/e;->a(Z)V

    .line 64
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    :try_start_2
    sget-object v3, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v3, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    iput-object v4, p0, Lio/teak/sdk/a/b;->a:Landroid/content/SharedPreferences;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v4, p0, Lio/teak/sdk/a/b;->a:Landroid/content/SharedPreferences;

    throw v0

    .line 47
    :cond_3
    sget-boolean v0, Lio/teak/sdk/Teak;->forceDebug:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lio/teak/sdk/a/b;->a:Landroid/content/SharedPreferences;

    const-string v3, "io.teak.sdk.Preferences.LogLocal"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lio/teak/sdk/a/b;->b:Z

    .line 48
    sget-boolean v0, Lio/teak/sdk/Teak;->forceDebug:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lio/teak/sdk/a/b;->a:Landroid/content/SharedPreferences;

    const-string v3, "io.teak.sdk.Preferences.LogRemote"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Lio/teak/sdk/a/b;->c:Z

    goto :goto_1

    :cond_6
    move v0, v1

    .line 47
    goto :goto_4

    :cond_7
    move v0, v1

    .line 48
    goto :goto_5

    :cond_8
    move v0, v1

    .line 54
    goto :goto_2

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_2

    :cond_9
    move v0, v1

    .line 62
    goto :goto_3
.end method


# virtual methods
.method public final a(ZZ)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    iget-boolean v0, p0, Lio/teak/sdk/a/b;->b:Z

    if-eq p1, v0, :cond_0

    .line 69
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/a/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 70
    const-string v3, "io.teak.sdk.Preferences.LogLocal"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 71
    const-string v3, "io.teak.sdk.Preferences.LogRemote"

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lio/teak/sdk/a/b;->b:Z

    .line 78
    iput-boolean p2, p0, Lio/teak/sdk/a/b;->c:Z

    .line 80
    sget-object v3, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    iget-boolean v0, p0, Lio/teak/sdk/a/b;->b:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/teak/sdk/a/b;->d:Z

    if-eqz v0, :cond_4

    :cond_1
    move v0, v2

    :goto_1
    iget-boolean v4, p0, Lio/teak/sdk/a/b;->c:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lio/teak/sdk/a/b;->d:Z

    if-eqz v4, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    invoke-virtual {v3, v0, v1}, Lio/teak/sdk/e;->a(ZZ)V

    .line 81
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    sget-object v3, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v3, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 80
    goto :goto_1
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lio/teak/sdk/a/b;->d:Z

    return v0
.end method
