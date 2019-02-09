.class public final Lio/teak/sdk/d$b;
.super Ljava/lang/ClassNotFoundException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/ClassNotFoundException;)V
    .locals 7
    .param p1    # Ljava/lang/ClassNotFoundException;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/ClassNotFoundException;-><init>()V

    .line 94
    const/4 v1, 0x0

    .line 95
    sget-object v4, Lio/teak/sdk/d;->a:[[Ljava/lang/String;

    move v2, v3

    :goto_0
    const/4 v0, 0x5

    if-ge v2, v0, :cond_2

    aget-object v0, v4, v2

    .line 96
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 101
    :goto_1
    iput-object v0, p0, Lio/teak/sdk/d$b;->a:[Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lio/teak/sdk/d$b;->a:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lio/teak/sdk/d$b;->a:[Ljava/lang/String;

    aget-object v0, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing dependencies: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", "

    iget-object v3, p0, Lio/teak/sdk/d$b;->a:[Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lio/teak/sdk/d$b;->a:[Ljava/lang/String;

    array-length v5, v5

    .line 107
    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    .line 106
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v0, v1}, Lio/teak/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void

    .line 95
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
