.class final Lio/teak/sdk/l$d;
.super Lio/teak/sdk/l$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# static fields
.field private static final f:Ljava/lang/Object;

.field private static g:Lio/teak/sdk/l$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 233
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/teak/sdk/l$d;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lio/teak/sdk/b/e;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lio/teak/sdk/b/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 246
    const-string v0, "/me/events"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lio/teak/sdk/l$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/teak/sdk/b/e;Z)V

    .line 247
    return-void
.end method

.method static a(Ljava/lang/String;Lio/teak/sdk/b/e;)Lio/teak/sdk/l$d;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lio/teak/sdk/b/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 237
    sget-object v1, Lio/teak/sdk/l$d;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    :try_start_0
    sget-object v0, Lio/teak/sdk/l$d;->g:Lio/teak/sdk/l$d;

    if-eqz v0, :cond_0

    sget-object v0, Lio/teak/sdk/l$d;->g:Lio/teak/sdk/l$d;

    iget-boolean v0, v0, Lio/teak/sdk/l$d;->b:Z

    if-eqz v0, :cond_1

    .line 239
    :cond_0
    new-instance v0, Lio/teak/sdk/l$d;

    invoke-direct {v0, p0, p1}, Lio/teak/sdk/l$d;-><init>(Ljava/lang/String;Lio/teak/sdk/b/e;)V

    sput-object v0, Lio/teak/sdk/l$d;->g:Lio/teak/sdk/l$d;

    .line 241
    :cond_1
    sget-object v0, Lio/teak/sdk/l$d;->g:Lio/teak/sdk/l$d;

    monitor-exit v1

    return-object v0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method final declared-synchronized a(Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/l$e;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/teak/sdk/l$e;
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
            "Lio/teak/sdk/l$e;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lio/teak/sdk/l$c;->a(Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/l$e;)Z
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
    .line 256
    sget-object v1, Lio/teak/sdk/l$d;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 258
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/l$d;->a:Ljava/util/Map;

    const-string v2, "batch"

    iget-object v3, p0, Lio/teak/sdk/l$d;->e:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-super {p0}, Lio/teak/sdk/l$c;->run()V

    .line 260
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
