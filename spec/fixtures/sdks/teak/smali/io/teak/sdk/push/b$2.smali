.class final Lio/teak/sdk/push/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/push/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lio/teak/sdk/push/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lio/teak/sdk/push/b;


# direct methods
.method constructor <init>(Lio/teak/sdk/push/b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lio/teak/sdk/push/b$2;->b:Lio/teak/sdk/push/b;

    iput-object p2, p0, Lio/teak/sdk/push/b$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 176
    .line 1179
    iget-object v0, p0, Lio/teak/sdk/push/b$2;->b:Lio/teak/sdk/push/b;

    invoke-static {v0}, Lio/teak/sdk/push/b;->a(Lio/teak/sdk/push/b;)Lio/teak/sdk/push/b$a;

    move-result-object v1

    .line 1180
    iget-object v0, p0, Lio/teak/sdk/push/b$2;->b:Lio/teak/sdk/push/b;

    invoke-static {v0}, Lio/teak/sdk/push/b;->b(Lio/teak/sdk/push/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1181
    :goto_0
    iget-object v2, p0, Lio/teak/sdk/push/b$2;->b:Lio/teak/sdk/push/b;

    iget-object v3, p0, Lio/teak/sdk/push/b$2;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lio/teak/sdk/push/b;->b(Lio/teak/sdk/push/b;Landroid/content/Context;)Lio/teak/sdk/push/b$b;

    move-result-object v2

    .line 1182
    iget-object v3, v2, Lio/teak/sdk/push/b$b;->a:Lio/teak/sdk/push/b$a;

    invoke-virtual {v1, v3}, Lio/teak/sdk/push/b$a;->a(Lio/teak/sdk/push/b$a;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lio/teak/sdk/push/b$b;->a:Lio/teak/sdk/push/b$a;

    .line 1183
    invoke-virtual {v1, v3}, Lio/teak/sdk/push/b$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, v0}, Lio/teak/sdk/push/b$b;->a(Lio/teak/sdk/push/b$b;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1184
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/teak/sdk/push/b$2;->b:Lio/teak/sdk/push/b;

    invoke-static {v1}, Lio/teak/sdk/push/b;->b(Lio/teak/sdk/push/b;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1185
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1186
    iget-object v1, p0, Lio/teak/sdk/push/b$2;->b:Lio/teak/sdk/push/b;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lio/teak/sdk/push/b;->a(Lio/teak/sdk/push/b;Ljava/util/List;)Ljava/util/List;

    .line 1187
    iget-object v0, p0, Lio/teak/sdk/push/b$2;->b:Lio/teak/sdk/push/b;

    iget-object v1, p0, Lio/teak/sdk/push/b$2;->a:Landroid/content/Context;

    iget-object v3, p0, Lio/teak/sdk/push/b$2;->b:Lio/teak/sdk/push/b;

    invoke-static {v3}, Lio/teak/sdk/push/b;->b(Lio/teak/sdk/push/b;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lio/teak/sdk/push/b;->a(Lio/teak/sdk/push/b;Landroid/content/Context;Ljava/util/List;)Ljava/util/concurrent/Future;

    .line 1188
    iget-object v0, v2, Lio/teak/sdk/push/b$b;->a:Lio/teak/sdk/push/b$a;

    :goto_1
    return-object v0

    .line 1180
    :cond_1
    iget-object v0, p0, Lio/teak/sdk/push/b$2;->b:Lio/teak/sdk/push/b;

    invoke-static {v0}, Lio/teak/sdk/push/b;->b(Lio/teak/sdk/push/b;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lio/teak/sdk/push/b$2;->b:Lio/teak/sdk/push/b;

    invoke-static {v2}, Lio/teak/sdk/push/b;->b(Lio/teak/sdk/push/b;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/push/b$b;

    goto :goto_0

    .line 1190
    :cond_2
    iget-object v0, p0, Lio/teak/sdk/push/b$2;->b:Lio/teak/sdk/push/b;

    invoke-static {v0}, Lio/teak/sdk/push/b;->a(Lio/teak/sdk/push/b;)Lio/teak/sdk/push/b$a;

    move-result-object v0

    goto :goto_1
.end method
