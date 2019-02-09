.class final Lio/teak/sdk/l$b;
.super Lio/teak/sdk/l$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static final f:Ljava/lang/Object;

.field private static g:Lio/teak/sdk/l$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/teak/sdk/l$b;->f:Ljava/lang/Object;

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
    .line 206
    const-string v0, "/batch"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lio/teak/sdk/l$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/teak/sdk/b/e;Z)V

    .line 207
    return-void
.end method

.method static a(Ljava/lang/String;Lio/teak/sdk/b/e;)Lio/teak/sdk/l$b;
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
    .line 197
    sget-object v1, Lio/teak/sdk/l$b;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_0
    sget-object v0, Lio/teak/sdk/l$b;->g:Lio/teak/sdk/l$b;

    if-eqz v0, :cond_0

    sget-object v0, Lio/teak/sdk/l$b;->g:Lio/teak/sdk/l$b;

    iget-boolean v0, v0, Lio/teak/sdk/l$b;->b:Z

    if-eqz v0, :cond_1

    .line 199
    :cond_0
    new-instance v0, Lio/teak/sdk/l$b;

    invoke-direct {v0, p0, p1}, Lio/teak/sdk/l$b;-><init>(Ljava/lang/String;Lio/teak/sdk/b/e;)V

    sput-object v0, Lio/teak/sdk/l$b;->g:Lio/teak/sdk/l$b;

    .line 201
    :cond_1
    sget-object v0, Lio/teak/sdk/l$b;->g:Lio/teak/sdk/l$b;

    monitor-exit v1

    return-object v0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method final declared-synchronized a(Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/l$e;)Z
    .locals 3
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
    .line 211
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 214
    invoke-static {}, Lio/teak/sdk/l;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 217
    const-string v2, "name"

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-super {p0, p1, v1, p3}, Lio/teak/sdk/l$c;->a(Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/l$e;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :cond_0
    move-object v0, p1

    .line 217
    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 224
    sget-object v1, Lio/teak/sdk/l$b;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 226
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/l$b;->a:Ljava/util/Map;

    const-string v2, "events"

    iget-object v3, p0, Lio/teak/sdk/l$b;->e:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-super {p0}, Lio/teak/sdk/l$c;->run()V

    .line 228
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
