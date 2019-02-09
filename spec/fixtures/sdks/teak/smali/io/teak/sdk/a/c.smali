.class public final Lio/teak/sdk/a/c;
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

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    :try_start_0
    const-string v0, "io.teak.sdk.Preferences"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 27
    iput-object v0, p0, Lio/teak/sdk/a/c;->a:Landroid/content/SharedPreferences;

    .line 30
    :goto_0
    iget-object v0, p0, Lio/teak/sdk/a/c;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_3

    .line 31
    sget-boolean v0, Lio/teak/sdk/Teak;->forceDebug:Z

    iput-boolean v0, p0, Lio/teak/sdk/a/c;->c:Z

    iput-boolean v0, p0, Lio/teak/sdk/a/c;->b:Z

    .line 39
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_8

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    move v0, v2

    .line 43
    :goto_2
    iput-boolean v0, p0, Lio/teak/sdk/a/c;->d:Z

    .line 48
    sget-object v3, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    iget-boolean v0, p0, Lio/teak/sdk/a/c;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/teak/sdk/a/c;->d:Z

    if-eqz v0, :cond_9

    :cond_0
    move v0, v2

    :goto_3
    iget-boolean v4, p0, Lio/teak/sdk/a/c;->b:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lio/teak/sdk/a/c;->d:Z

    if-eqz v4, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-virtual {v3, v0, v1}, Lio/teak/sdk/f;->a(ZZ)V

    .line 49
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    iget-boolean v1, p0, Lio/teak/sdk/a/c;->d:Z

    invoke-virtual {v0, v1}, Lio/teak/sdk/f;->a(Z)V

    .line 50
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    :try_start_2
    sget-object v3, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v3, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    iput-object v4, p0, Lio/teak/sdk/a/c;->a:Landroid/content/SharedPreferences;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v4, p0, Lio/teak/sdk/a/c;->a:Landroid/content/SharedPreferences;

    .line 28
    throw v0

    .line 33
    :cond_3
    sget-boolean v0, Lio/teak/sdk/Teak;->forceDebug:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lio/teak/sdk/a/c;->a:Landroid/content/SharedPreferences;

    const-string v3, "io.teak.sdk.Preferences.LogLocal"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lio/teak/sdk/a/c;->b:Z

    .line 34
    sget-boolean v0, Lio/teak/sdk/Teak;->forceDebug:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lio/teak/sdk/a/c;->a:Landroid/content/SharedPreferences;

    const-string v3, "io.teak.sdk.Preferences.LogRemote"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Lio/teak/sdk/a/c;->c:Z

    goto :goto_1

    :cond_6
    move v0, v1

    .line 33
    goto :goto_4

    :cond_7
    move v0, v1

    .line 34
    goto :goto_5

    :cond_8
    move v0, v1

    .line 40
    goto :goto_2

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_2

    :cond_9
    move v0, v1

    .line 48
    goto :goto_3
.end method


# virtual methods
.method public final a(ZZ)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 53
    iget-boolean v0, p0, Lio/teak/sdk/a/c;->b:Z

    if-eq p1, v0, :cond_0

    .line 55
    :try_start_0
    const-string v3, "io.teak.sdk.Preferences"

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :try_start_1
    iget-object v0, p0, Lio/teak/sdk/a/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 57
    const-string v4, "io.teak.sdk.Preferences.LogLocal"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 58
    const-string v4, "io.teak.sdk.Preferences.LogRemote"

    invoke-interface {v0, v4, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 60
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lio/teak/sdk/a/c;->b:Z

    .line 66
    iput-boolean p2, p0, Lio/teak/sdk/a/c;->c:Z

    .line 68
    sget-object v3, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    iget-boolean v0, p0, Lio/teak/sdk/a/c;->b:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/teak/sdk/a/c;->d:Z

    if-eqz v0, :cond_4

    :cond_1
    move v0, v2

    :goto_1
    iget-boolean v4, p0, Lio/teak/sdk/a/c;->c:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lio/teak/sdk/a/c;->d:Z

    if-eqz v4, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    invoke-virtual {v3, v0, v1}, Lio/teak/sdk/f;->a(ZZ)V

    .line 69
    return-void

    .line 60
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    sget-object v3, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v3, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 68
    goto :goto_1
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lio/teak/sdk/a/c;->d:Z

    return v0
.end method
