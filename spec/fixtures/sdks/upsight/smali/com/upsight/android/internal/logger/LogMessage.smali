.class public final Lcom/upsight/android/internal/logger/LogMessage;
.super Ljava/lang/Object;
.source "LogMessage.java"


# annotations
.annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    value = "com.upsight.message.log"
.end annotation


# instance fields
.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;
    .end annotation
.end field

.field private level:Lcom/upsight/android/logger/UpsightLogger$Level;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private tag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private throwableString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method constructor <init>(Lcom/upsight/android/internal/logger/LogMessage;)V
    .locals 4
    .param p1, "source"    # Lcom/upsight/android/internal/logger/LogMessage;

    .prologue
    .line 44
    iget-object v0, p1, Lcom/upsight/android/internal/logger/LogMessage;->tag:Ljava/lang/String;

    iget-object v1, p1, Lcom/upsight/android/internal/logger/LogMessage;->level:Lcom/upsight/android/logger/UpsightLogger$Level;

    iget-object v2, p1, Lcom/upsight/android/internal/logger/LogMessage;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/upsight/android/internal/logger/LogMessage;->throwableString:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/upsight/android/internal/logger/LogMessage;-><init>(Ljava/lang/String;Lcom/upsight/android/logger/UpsightLogger$Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/upsight/android/logger/UpsightLogger$Level;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "level"    # Lcom/upsight/android/logger/UpsightLogger$Level;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "throwableString"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/upsight/android/internal/logger/LogMessage;->tag:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/upsight/android/internal/logger/LogMessage;->level:Lcom/upsight/android/logger/UpsightLogger$Level;

    .line 39
    iput-object p3, p0, Lcom/upsight/android/internal/logger/LogMessage;->message:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/upsight/android/internal/logger/LogMessage;->throwableString:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    if-ne p0, p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v1

    .line 87
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 88
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 91
    check-cast v0, Lcom/upsight/android/internal/logger/LogMessage;

    .line 93
    .local v0, "that":Lcom/upsight/android/internal/logger/LogMessage;
    iget-object v3, p0, Lcom/upsight/android/internal/logger/LogMessage;->id:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/upsight/android/internal/logger/LogMessage;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/android/internal/logger/LogMessage;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 94
    goto :goto_0

    .line 93
    :cond_4
    iget-object v3, v0, Lcom/upsight/android/internal/logger/LogMessage;->id:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getLevel()Lcom/upsight/android/logger/UpsightLogger$Level;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/upsight/android/internal/logger/LogMessage;->level:Lcom/upsight/android/logger/UpsightLogger$Level;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/upsight/android/internal/logger/LogMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/upsight/android/internal/logger/LogMessage;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowableString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/upsight/android/internal/logger/LogMessage;->throwableString:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/upsight/android/internal/logger/LogMessage;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upsight/android/internal/logger/LogMessage;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLevel(Lcom/upsight/android/logger/UpsightLogger$Level;)V
    .locals 0
    .param p1, "level"    # Lcom/upsight/android/logger/UpsightLogger$Level;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/upsight/android/internal/logger/LogMessage;->level:Lcom/upsight/android/logger/UpsightLogger$Level;

    .line 80
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/upsight/android/internal/logger/LogMessage;->message:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/upsight/android/internal/logger/LogMessage;->tag:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setThrowableString(Ljava/lang/String;)V
    .locals 0
    .param p1, "throwableString"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/upsight/android/internal/logger/LogMessage;->throwableString:Ljava/lang/String;

    .line 72
    return-void
.end method
