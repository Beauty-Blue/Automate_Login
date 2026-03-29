def simpleCipher(encrypted, k):
    result = ""
    
    for char in encrypted:
        num = ord(char) - ord('A')
        num = (num - k) % 26
        result += chr(num + ord('A'))
    
    return result


# 👇 ต้องมีอันนี้
print(simpleCipher("VTAOG", 2))