.class final Lio/teak/sdk/k$d;
.super Lio/teak/sdk/k$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# static fields
.field private static final f:Ljava/lang/Object;

.field private static g:Lio/teak/sdk/k$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 245
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/teak/sdk/k$d;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lio/teak/sdk/b/d;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lio/teak/sdk/b/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 258
    const-string v0, "/me/events"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lio/teak/sdk/k$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/teak/sdk/b/d;Z)V

    .line 259
    return-void
.end method

.method static a(Ljava/lang/String;Lio/teak/sdk/b/d;)Lio/teak/sdk/k$d;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lio/teak/sdk/b/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 249
    sget-object v1, Lio/teak/sdk/k$d;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_0
    sget-object v0, Lio/teak/sdk/k$d;->g:Lio/teak/sdk/k$d;

    if-eqz v0, :cond_0

    sget-object v0, Lio/teak/sdk/k$d;->g:Lio/teak/sdk/k$d;

    iget-boolean v0, v0, Lio/teak/sdk/k$d;->b:Z

    if-eqz v0, :cond_1

    .line 251
    :cond_0
    new-instance v0, Lio/teak/sdk/k$d;

    invoke-direct {v0, p0, p1}, Lio/teak/sdk/k$d;-><init>(Ljava/lang/String;Lio/teak/sdk/b/d;)V

    sput-object v0, Lio/teak/sdk/k$d;->g:Lio/teak/sdk/k$d;

    .line 253
    :cond_1
    sget-object v0, Lio/teak/sdk/k$d;->g:Lio/teak/sdk/k$d;

    monitor-exit v1

    return-object v0

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method final declared-synchronized a(Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/k$e;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/teak/sdk/k$e;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lio/teak/sdk/k$e;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lio/teak/sdk/k$c;->a(Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/k$e;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 268
    sget-object v1, Lio/teak/sdk/k$d;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 270
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/k$d;->a:Ljava/util/Map;

    const-string v2, "batch"

    iget-object v3, p0, Lio/teak/sdk/k$d;->e:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-super {p0}, Lio/teak/sdk/k$c;->run()V

    .line 272
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
